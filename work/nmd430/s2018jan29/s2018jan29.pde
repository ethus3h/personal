
void setup() {
  size(1800, 1800);
  background(255);
}
int linePointY(int x1, int y1, int x2, int y2, int dist) {
  try {
    System.out.println(Integer.toString(x1) + ", " + Integer.toString(y1) + ", " + Integer.toString(x2) + ", " + Integer.toString(y2) + ", " + Integer.toString(dist) + ", " + Integer.toString((int)((y2-y1)/(x2-x1))*(dist-x1)));
    return (int)((y2-y1)/(x2-x1))*(dist-x1);
  }
  catch(Exception e) {
    System.out.println(Integer.toString(x1) + ", " + Integer.toString(y1) + ", " + Integer.toString(x2) + ", " + Integer.toString(y2) + ", " + Integer.toString(dist));
    return y2;
  }
}

void draw() {
  fill((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255), 5);
  rect(0, 0, 1800, 1800);

  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/4+mouseY/4) % 255));
  int ellipseHomeX=0;
  int ellipseHomeY=0;
  int ellipsePosX=0;
  int ellipsePosY=0;
  int distFromMouse=(int)dist(ellipseHomeX, ellipseHomeY, mouseX, mouseY);

    ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, distFromMouse);
    ellipsePosX=distFromMouse;
  if ( distFromMouse < 1000) {
    ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, distFromMouse);
    ellipsePosX=distFromMouse;
  }
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}