
void setup() {
  size(1800,1800);
  background(255);
}

void draw() {
  //background((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255), 0.001);
  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/4+mouseY/4) % 255));
  int ellipsePosX=0;
  int ellipsePosY=0;
  if( mouseX < 500) {
    ellipsePosX=500;
    if (mouseX != 0) {
         ellipsePosX=500 / mouseX;
    }
  }
  if( mouseY < 500) {
    ellipsePosY=500 / mouseY;
    if (mouseY != 0) {
         ellipsePosY=500 / mouseY;
    }
  }
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}