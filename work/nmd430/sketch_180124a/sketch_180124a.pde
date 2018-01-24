
void setup() {
  size(1800, 1800);
  background(255);
}

void draw() {
  fill((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255), 5);
  rect(0,0,1800,1800);
 
  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/4+mouseY/4) % 255));
  int ellipsePosX=0;
  int ellipsePosY=0;

  if ( dist(0,0,mouseX,mouseY) < 1000) {
    ellipsePosY=mouseX / 1;

  }
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}