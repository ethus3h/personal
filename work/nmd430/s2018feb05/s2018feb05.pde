import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.List;
import java.util.Collections;
import java.util.Comparator;

int mySize = 2000;
int currentTick = 0;
void setup() {
  size(2000, 2000);
  //fullScreen();
  background(255);
}

int linePointY(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(y1 + dist * sin(angle));
}

int linePointX(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(x1 + dist * cos(angle));
}

int smoothMod(int num, int limit) {
  limit = (limit * 2) - 1;
  int mod = num % (limit + 1);
  int result = mod;
  if ((2 * mod) > (limit + 1)) {
    result = limit - mod + 2;
  }
  return result;
}

float weightedAvg(int a, int b) {
  return b + (a * 0.1);
}

float weightedAvg(int a, int b, float c) {
  return b + (a * c);
}

public class LifeComparator implements Comparator<Life> {
  @Override
  public int compare(Life a, Life b) {
    return a.compareTo(b);
  }
}

class Life implements Comparable<Life> {
  Integer zIndex = 0;
  void draw() {};
  void update() {};
  @Override
  public int compareTo(Life l) {
    return zIndex.compareTo(l.zIndex);
  }
}

class Sun extends Life {
  Integer temperature = 0;
  Integer zIndex;
  Sun(Integer zIndex){
    this.zIndex = zIndex;
  }
  void draw() {
    fill(255,255,255);
    ellipse(temperature,temperature,100,100);
  }
  void update() {

  }
}

class Sky extends Life {
  Sun sun = new Sun(2);
  void draw() {
    fill(smoothMod(sun.temperature,120),sun.temperature / 2,(sun.temperature * 2) + 20);
    rect(0, 0, mySize, mySize);
  }
  void update() {
    sun.temperature = smoothMod(world.time, 255);
  }
}

class SceneManager {
  List<Life> residents = new ArrayList<Life>();
  Integer time = 0;
  SceneManager() {
    residents.add(new Sky());
  }
  void update() {
    Collections.sort(residents, new LifeComparator());
    for (Life resident: residents) {
      resident.update();
      resident.draw();
    }
    time += 1;
  }
}

SceneManager world = new SceneManager();

void draw() {
  world.update();
}