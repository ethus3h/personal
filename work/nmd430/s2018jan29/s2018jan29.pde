
void setup() {
  size(1800, 1800);
  background(255);
}
int linePointY(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((to.y - from.y), (to.x - from.x));
  return 
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