import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.List;

int mySize = 2000;
int currentTick = 0;
void setup() {
  size(2000, 2000);
  //fullScreen();
  background(255);
}

class Wanderer {
  private final float followTendency;
  private final int id;
  private final int specifiedX;
  private final int specifiedY;
  final int ellipseStartX;
  final int ellipseStartY;
  public Wanderer(float initFollowTendency, int x, int y) {
    this.followTendency = initFollowTendency;
    this.specifiedX = x;
    this.specifiedY = y;
    this.ellipseStartX = x;
    this.ellipseStartY = y;
    if (initFollowTendency == 0) {
      this.id = 0;
    } else if (initFollowTendency == 1) {
      this.id = 1;
    } else {
      this.id = (int)(initFollowTendency*10);
    }
  }
  int step = 0;
  int memory[] = new int[10000];
  int strokeColor[] = new int[3];
  int innerColor[] = new int[3];
  int midColor[] = new int[3];
  int outerColor[] = new int[3];
  int ellipsePosX=this.specifiedX;
  int ellipsePosY=this.specifiedY;
  int ellipseHomeX=this.specifiedX;
  int ellipseHomeY=this.specifiedY;
  int ellipsePrevPosX=this.specifiedX;
  int ellipsePrevPosY=this.specifiedY;
  int personalityCached=0;
  int moodCached=0;
  float speed=0;
  void remember(int value) {
    if (step >= 10000) {
      step = 0;
    } 
    memory[step]=(value + memory[step]) / 2;
    step=step + 1;
  }

  int getPersonality() {
    int result=(int)Arrays.stream(memory).average().getAsDouble();
    personalityCached=result;
    return result;
  }

  int getMood() {
    int[] mem=Arrays.copyOfRange(memory, Math.max(step - 100, 0), Math.max(step, 1));
    int result=(int)Arrays.stream(mem).average().getAsDouble();
    moodCached=result;
    return result;
  }

  void click() {
    remember(100000);
  }

  void tick(float monitor) {
    remember(smoothMod((ellipsePosX + mouseX) / 2, mySize));
    remember(smoothMod((ellipsePosY + mouseY) / 2, mySize));

    ellipsePrevPosX=ellipsePosX;
    ellipsePrevPosY=ellipsePosY;
    ellipseHomeX=(int) lerp(ellipseStartX, ellipsePrevPosX, followTendency);
    ellipseHomeY=(int) lerp(ellipseStartY, ellipsePrevPosY, followTendency);

    int mouseDistFromHome=(int)dist(ellipseHomeX, ellipseHomeY, mouseX, mouseY);

    if ( mouseDistFromHome < (500 + getPersonality()) * 3.5) {
      ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);
      ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);

      if ( mouseDistFromHome > ((500 + (getPersonality() / 2)) * 1.5)) {
        try {
          ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome / 250);
        }
        catch(Exception e) {
          ellipsePosY=ellipseHomeY;
        }
        try {
          ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome / 250);
        }   
        catch(Exception e) {
          ellipsePosX=ellipseHomeX;
        }
      }
    }
    speed=((float)getMood() / 600.0) + (monitor / 30);
    System.out.println(Integer.toString(id)+"|Mood="+Integer.toString(getMood())+"|Pty="+Integer.toString(getPersonality())+"|Spd="+Integer.toString((int)(speed*100))+"|Mdist="+Integer.toString(mouseDistFromHome)+"|Mon="+Float.toString(monitor));
    ellipsePosX=(int)((ellipsePosX * speed) + ellipsePrevPosX) / 2;
    ellipsePosY=(int)((ellipsePosY * speed) + ellipsePrevPosY) / 2;

    strokeColor[0]=(int)weightedAvg(strokeColor[0], getMood() * 10);
    strokeColor[1]=(int)weightedAvg(strokeColor[1], smoothMod(getPersonality(), 255));
    strokeColor[2]=(int)weightedAvg(strokeColor[2], ((getMood() * 10) + getPersonality()) / 2);
    stroke(strokeColor[0], strokeColor[1], strokeColor[2]);

    innerColor[0]=(int)weightedAvg(smoothMod(ellipsePosX, 255), smoothMod((int)(mouseX/followTendency), 255));
    innerColor[1]=(int)weightedAvg(smoothMod(ellipsePosY, 255), smoothMod((int)(mouseY/followTendency), 255));
    innerColor[2]=(int)weightedAvg(smoothMod(((int)weightedAvg(ellipsePosY * 100, ellipsePosX * 100)) / 100, 255), ((mouseX/4+mouseY/4) % 255));
    fill(innerColor[0], innerColor[1], innerColor[2]);
    ellipse(ellipsePosX, ellipsePosY, 400 + (230 * followTendency), 400 + (230 * followTendency));

    midColor[0]=(int)weightedAvg(smoothMod(getMood(), 255), smoothMod((int)(mouseX/followTendency), 320));
    midColor[1]=(int)weightedAvg(smoothMod(getMood(), 255), smoothMod((int)(mouseY/followTendency), 320));
    midColor[2]=(int)weightedAvg(smoothMod(getMood(), 255), ((mouseX/4+mouseY/4) % 255));
    fill(midColor[0], midColor[1], midColor[2]);
    ellipse(ellipsePosX, ellipsePosY, 400 + (200 * speed), 400 + (200 * speed));

    outerColor[0]=(int)weightedAvg(smoothMod(getPersonality(), 255), smoothMod((int)(mouseY/followTendency), 300));
    outerColor[1]=(int)weightedAvg(smoothMod(getPersonality(), 255), smoothMod((int)(mouseX/followTendency), 300));
    outerColor[2]=(int)weightedAvg(smoothMod(getPersonality(), 255), ((mouseX/4+mouseY/4) % 255));
    fill(outerColor[0], outerColor[1], outerColor[2]);
    ellipse(ellipsePosX, ellipsePosY, 400, 400);
  }
}

int linePointY(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(y1 + dist * sin(angle));
}

int linePointX(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(x1 + dist * cos(angle));
}

int smoothMod(int num, int limit) {
  limit = (limit * 2) - 1;
  int mod = num % (limit + 1);
  int result = mod;
  if ((2 * mod) > (limit + 1)) {
    result = limit - mod + 2;
  }
  return result;
}

float weightedAvg(int a, int b) {
  return b + (a * 0.1);
}

float weightedAvg(int a, int b, float c) {
  return b + (a * c);
}

class Life {
}

class SceneManager {
  List<Life> residents = new ArrayList<Life>();
  void update() {
  }
}

SceneManager sceneMgr = new SceneManager();

void draw() {
  sceneMgr.update();
}