
void setup() {
  size(1800, 1800);
  background(255);
}

void draw() {
  fill((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255), 900);
  rect(0,0,1000,1000);
  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/4+mouseY/4) % 255));
  int ellipsePosX=0;
  int ellipsePosY=0;
  if ( mouseX < 1000 && mouseY < 1000) {
    if ( mouseX < 1000) {
      ellipsePosX=500;
      if (mouseX != 0) {
        ellipsePosX=1000 - mouseX;
      }
      if (ellipsePosX > 500) {
        ellipsePosX=mouseX;
      }
    }
    if ( mouseY < 1000) {
      ellipsePosY=500;
      if (mouseY != 0) {
        ellipsePosY=1000 - mouseY;
      }
      if (ellipsePosY > 500) {
        ellipsePosY=mouseY;
      }
    }
  }
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}