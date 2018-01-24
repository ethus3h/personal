
void setup() {
  size(1000,1000);
  background(255);
}

void draw() {
  background((mouseX % 255), (mouseY % 255), ((mouseX+mouseY) % 255));
  fill(0, 128, 0);
  ellipse(mouseX, mouseY, 100, 100);
}