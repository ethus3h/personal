import java.util.Arrays;

void setup() {
  size(1800, 1800);
  background(255);
}

int step = 0;
int memory[] = new int[10000];
int ellipsePosX=0;
int ellipsePosY=0;
int ellipsePrevPosX=0;
int ellipsePrevPosY=0;
float speed=0;

int linePointY(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(y1 + dist * sin(angle));
}

int linePointX(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(x1 + dist * cos(angle));
}

void remember(int value) {
  if(step > 10000) {
    step = 0;
  }
  step=step + 1;
  memory[step]=(value + memory[step]) / 2;
}

int getPersonality() {
  int result=(int)Arrays.stream(memory).average().getAsDouble();
  System.out.println("Personality: "+Integer.toString(result));
  return result;
}

int getMood() {
  int[] mem=Arrays.copyOfRange(memory, Math.max(step - 100, 0), step);
  int result=(int)Arrays.stream(mem).average().getAsDouble();
  System.out.println("Mood: "+Integer.toString(result));
  return result;
}

void draw() {
  fill((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255), 5);
  rect(0, 0, 1800, 1800);

  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/4+mouseY/4) % 255));

  remember(mouseX);
  remember(mouseY);

  ellipsePrevPosX=ellipsePosX;
  ellipsePrevPosY=ellipsePosY;

  int ellipseHomeX=0;
  int ellipseHomeY=0;
  int mouseDistFromHome=(int)dist(ellipseHomeX, ellipseHomeY, mouseX, mouseY);

  if ( mouseDistFromHome < (1000 + getPersonality()) / 2) {
    ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);
    ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);

    if ( mouseDistFromHome > (1000 + (getPersonality() / 2) / 2)) {
      System.out.println(mouseDistFromHome);
      try {
        ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome / 250);
      }
      catch(Exception e) {
        ellipsePosY=0;
      }
      try {
        ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome / 250);
      }   
      catch(Exception e) {
        ellipsePosX=0;
      }
    }
  }
  speed=getMood() / 300;
  System.out.println("Speed: "+Float.toString(speed));
  ellipsePosX=(int)((ellipsePosX * speed) + ellipsePrevPosX) / 2;
  ellipsePosY=(int)((ellipsePosY * speed) + ellipsePrevPosY) / 2;
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}