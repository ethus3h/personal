
void setup() {
  size(1000,1000);
  background(255);
}

void draw() {
  background((mouseX/3 % 255), (mouseY/3 % 255), ((mouseX/3+mouseY/3) % 255));
  fill(0, 128, 0);
  ellipse(mouseX, mouseY, 100, 100);
}