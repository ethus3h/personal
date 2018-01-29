
void setup() {
  size(1800, 1800);
  background(255);
}

# Was going to ask "Hi! I know two points (x1,y1) and (x2,y2) on a line. I also have a distance (single number). I'd like to find the x and y coordinates of the point that is [distance] away from the y-intercept of the line (0,0). I'm writing a computer program in Java that needs to do this. "
But then i found https://processing.org/discourse/beta/num_1227031390.html :)
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
  int distFromMouse=(int)dist(ellipseHomeX, ellipseHomeY, mouseX, mouseY);

    ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, distFromMouse);
    ellipsePosX=distFromMouse;
  if ( distFromMouse < 1000) {
    ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, distFromMouse);
    ellipsePosX=distFromMouse;
  }
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}