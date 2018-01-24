
void setup() {
  size(1000,1000);
  background(255);
}

void draw() {
  background(mouseX);
  fill(0, 128, 0);
  ellipse(mouseX, mouseY, 100, 100);
}