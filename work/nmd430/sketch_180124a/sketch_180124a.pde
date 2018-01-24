
void setup() {
  size(1800,1800);
  background(255);
}

void draw() {
  //background((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255), 0.001);
  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/4+mouseY/4) % 255));
  ellipse(mouseX, mouseY, 400, 400);
}