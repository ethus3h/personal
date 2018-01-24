
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
  int ellipseHomeX=0;
  int ellipseHomeY=0;

  if ( dist(ellipseHomeX,ellipseHomeY,mouseX,mouseY) < 1000) {
    // Line y = ((mouseY-startY)/(mouseX-startX))*(x-startX)
    ellipsePosY=mouseX / 1;

  }
  ellipse(ellipsePosX, ellipsePosY, 400, 400);
}