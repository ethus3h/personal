import java.util.Arrays;
import java.util.concurrent.TimeUnit;

void setup() {
  size(2000, 2000);
  //fullScreen();
  background(255);
  /* int i = 0;
  int j = 0;
  int res = 0;
  while (i < 60) {
    while (j < 10) {
      res = smoothMod(j + (10 * i), 255);
      System.out.print("|"+Integer.toString(j + (10 * i))+":"+Integer.toString(res));
      j = j + 1;
    }
    System.out.println();
    i = i + 1;
    j = 0;
  }
  try {
    TimeUnit.SECONDS.sleep(10);
  }
  catch (Exception e) {
  }
  */
}

class Wanderer {
  private final float followTendency;
  private final int id;
  public Wanderer(float initFollowTendency) {
    this.followTendency = initFollowTendency;
    if(initFollowTendency == 0) {
      this.id = 0;
    }
    else if(initFollowTendency == 1) {
      this.id = 1;
    }
    else {
      this.id = (int)(initFollowTendency*10);
    }
  }
  int step = 0;
  int memory[] = new int[10000];
  int strokeColor[] = new int[3];
  int innerColor[] = new int[3];
  int midColor[] = new int[3];
  int outerColor[] = new int[3];
  int ellipsePosX=0;
  int ellipsePosY=0;
  int ellipseHomeX=0;
  int ellipseHomeY=0;
  final float ellipseStartX=0;
  final float ellipseStartY=0;
  int ellipsePrevPosX=0;
  int ellipsePrevPosY=0;
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

  void tick() {
    remember((ellipsePosX + mouseX) / 2);
    remember((ellipsePosY + mouseY) / 2);

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
    speed=(float)getMood() / 600.0;
    System.out.println(Integer.toString(id)+"|Mood="+Integer.toString(getMood())+"|Pty="+Integer.toString(getPersonality())+"|Spd="+Integer.toString((int)(speed*100))+"|Mdist="+Integer.toString(mouseDistFromHome));
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
    ellipse(ellipsePosX, ellipsePosY, 400 + (200 * followTendency), 400 + (200 * followTendency));

    midColor[0]=(int)weightedAvg(smoothMod(255, 255), smoothMod((int)(mouseX/followTendency), 320));
    midColor[1]=(int)weightedAvg(smoothMod(255, 255), smoothMod((int)(mouseY/followTendency), 320));
    midColor[2]=(int)weightedAvg(smoothMod(255, 255), ((mouseX/4+mouseY/4) % 255));
    fill(midColor[0], midColor[1], midColor[2]);
    ellipse(ellipsePosX, ellipsePosY, 400 + (200 * speed), 400 + (200 * speed));

    outerColor[0]=(int)weightedAvg(smoothMod(255, 255), smoothMod((int)(mouseY/followTendency), 300));
    outerColor[1]=(int)weightedAvg(smoothMod(255, 255), smoothMod((int)(mouseX/followTendency), 300));
    outerColor[2]=(int)weightedAvg(smoothMod(255, 255), ((mouseX/4+mouseY/4) % 255));
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

Wanderer wanderer0=new Wanderer(0);
Wanderer wanderer5=new Wanderer(0.5);
Wanderer wanderer1=new Wanderer(1);
void draw() {
  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/3+mouseY/3) % 255), 5);
  rect(-10, -10, 18000, 18000);

  wanderer0.tick();
  wanderer5.tick();
  wanderer1.tick();
}