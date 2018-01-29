
void setup() {
  size(1800, 1800);
  background(255);
}

int linePointY(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(y1 + dist * sin(angle));
}

int linePointX(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(x1 + dist * cos(angle));
}

void draw() {
  fill((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255), 5);
  rect(0, 0, 1800, 1800);

  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/4+mouseY/4) % 255));
  int ellipseHomeX=0;
  int ellipseHomeY=0;
  int ellipsePosX=0;
  int ellipsePosY=0;
  int mouseDistFromHome=(int)dist(ellipseHomeX, ellipseHomeY, mouseX, mouseY);

  if ( mouseDistFromHome < 1000) {
    ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);
    ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);

    if ( mouseDistFromHome > 500) {
      System.out.println(mouseDistFromHome);
      try {
        ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, 500 / mouseDistFromHome);
      }
      catch(Exception e) {
        ellipsePosY=0;
      }
      try {
        ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, 500 / mouseDistFromHome);
      }   
      catch(Exception e) {
        ellipsePosX=0;
      }
    }
  }
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}