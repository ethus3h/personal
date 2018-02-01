import java.util.Arrays;

void setup() {
  size(2000, 2000);
  //fullScreen();
  background(255);
}

class Wanderer {
  private final float followTendency;
  public Wanderer(float initFollowTendency) {
    this.followTendency = initFollowTendency;
  }
  int step = 0;
  int memory[] = new int[10000];
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
    stroke(getMood() * 10, getPersonality(), ((getMood() * 10) + getPersonality()) / 2);
    fill(smoothMod((int)(mouseX/followTendency), 255), smoothMod((int)(mouseY/followTendency), 255), ((mouseX/4+mouseY/4) % 255));

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
    //System.out.println(Float.toString(followTendency)+" Mood: "+Integer.toString(getMood())+" Personality: "+Integer.toString(getPersonality())+" Speed: "+Float.toString(speed)+" mouseDistFromHome: "+Integer.toString(mouseDistFromHome));
    ellipsePosX=(int)((ellipsePosX * speed) + ellipsePrevPosX) / 2;
    ellipsePosY=(int)((ellipsePosY * speed) + ellipsePrevPosY) / 2;
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
  int mod = num % (limit + 1);
  int result = mod;
  if(mod > ((limit / 2) + 1)) {
    result = mod - ((limit / 2) + 1);
    System.out.println("mod gtr than hlaf limit"+Integer.toString(mod)+" with result: "+Integer.toString(result));
  }
  System.out.println("smoothMod of "+Integer.toString(num)+" with limit "+Integer.toString(limit)+" = "+Integer.toString(result));
  return result;
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