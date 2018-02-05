import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.List;

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

interface Life {
  void draw();
  void update();
}

class Sun implements Life {
  int temperature = 0;
  void draw() {
  }
  void update() {
    
  }
}

class Sky implements Life {
  Sun sun = new Sun();
  void draw() {
    fill(sun.temperature,0,255);
    rect(0, 0, mySize, mySize);
  }
  void update() {
    sun.temperature += 1;
  }
}

class SceneManager {
  List<Life> residents = new ArrayList<Life>();
  SceneManager() {
    residents.add(new Sun());
  }
  void update() {
    for (Life resident: residents) {
      resident.update();
      resident.draw();
    }
  }
}

SceneManager sceneMgr = new SceneManager();

void draw() {
  sceneMgr.update();
}