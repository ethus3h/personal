import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.List;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

SceneManager world = new SceneManager();

int mySize = 2000;
int currentTick = 0;
void setup() {
  size(2000, 2000);
  //fullScreen();
  background(255);
  Sky sky = new Sky();
  world.add(new Sky());
  world.sky = sky;
  world.add(new Creature());
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

/* from https://processing.org/examples/rollover.html */
boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

public class LifeComparator implements Comparator<Life> {
  @Override
    public int compare(Life a, Life b) {
    return a.compareTo(b);
  }
}

class Life implements Comparable<Life> {
  protected Integer zIndex = 0;
  void draw() {
  };
  void update() {
  };
  @Override
    public int compareTo(Life l) {
    int result = zIndex.compareTo(l.zIndex);
    System.out.println(Integer.toString(this.zIndex)+this.getClass().getName()+Integer.toString(l.zIndex)+l.getClass().getName()+Integer.toString(result));
    return result;
  }
}

class Sun extends Life {
  Integer temperature = 0;
  Integer zIndex;
  Sun(Integer zIndex) {
    super.zIndex = zIndex;
  }
  void draw() {
    fill(255, 255, 255);
    ellipse((mySize - (mySize * (temperature / 100.0))), (mySize - (mySize * (smoothMod(temperature, 50) / 100.0))), 1000, 1000);
  }
  void update() {
  }
}

class Creature extends Life {
  Integer waterSatiation = 0;
  Integer jealousy = 0;
  Integer x = 0;
  Integer y = 0;
  Integer size = 0;
  void draw() {
    fill(255 * (waterSatiation / 10), 255 * (waterSatiation / 10), 255 * (waterSatiation / 10));
    ellipse(x, y, size, size);
  }
  void update() {
    if (overCircle(x, y, 100 + waterSatiation) && mousePressed) {
      // Being watered by human
      waterSatiation = waterSatiation + 10;
    } else {
      // General living state: depleting water at slow rate. Water depletion increases as sun gets hotter.
      if (waterSatiation > 0) {
        waterSatiation = waterSatiation - (world.sky.sun.temperature / 30);
      }
    }
    // Reproduction state
    if (waterSatiation > 200) {
      // It's fully healthy, doesn't need any more water. So, it has enough energy to safely reproduce.
      world.add(new Creature());
      waterSatiation = 180;
    }
    // Wanting space state: iterate through neighbors and find any that are too close
    for (Iterator<Life> residentIterator = world.residents.iterator(); residentIterator.hasNext(); ) {
      Life thisNeighbor = residentIterator.next();
      if (thisNeighbor instanceof Creature) {
        Creature thisNeighborCreature = (Creature)thisNeighbor;
        float neighborX = ((thisNeighborCreature.x + thisNeighborCreature.size) / 2);
        float neighborY = ((float)thisNeighborCreature.y);
        float thisX = ((float)this.x);
        float thisY = ((float)this.y);
        if (dist(neighborX, neighborY, thisX, thisY) < this.size) {
          // If it's too close to another creature, it will try to get away.
        }
      }
    }
    this.size = 100 + (waterSatiation / 10); // 100 is its base size, it grows with the more water it has
  }
}

class Sky extends Life {
  Sun sun = (Sun)world.add(new Sun(2));
  void draw() {
    fill(smoothMod(sun.temperature, 120), sun.temperature / 2, (sun.temperature * 2) + 20);
    rect(0, 0, mySize, mySize);
  }
  void update() {
    sun.temperature = smoothMod(world.time, 100);
  }
}

class SceneManager {
  List<Life> residents = new ArrayList<Life>();
  List<Life> deferredResidents = new ArrayList<Life>();
  Integer time = 0;
  Boolean updating = false;
  Sky sky = new Sky();
  Life add(Life newResident) {
    if (this.updating) {
      this.addDeferred(newResident);
    } else {
      residents.add(newResident);
    }
    return newResident;
  }
  void addDeferred(Life newResident) {
    deferredResidents.add(newResident);
  }
  void update() {
    this.updating = true;
    Collections.sort(residents, new LifeComparator());
    for (Life resident : residents) {
      System.out.println(resident.getClass().getName());
      resident.update();
      resident.draw();
    }
    for (Iterator<Life> deferredResidentIterator = deferredResidents.iterator(); deferredResidentIterator.hasNext(); ) {
      residents.add(deferredResidentIterator.next());
      deferredResidentIterator.remove();
    }
    time += 1;
    this.updating = false;
  }
}

void draw() {
  world.update();
  System.out.println("Done drawing");
}