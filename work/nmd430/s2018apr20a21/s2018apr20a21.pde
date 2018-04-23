/**
 * Title: Final Assignment
 * Name: Elliot Chandler (Wallace)
 * Date: 2018 Apr. 23
 * Description: A virtual interactive ecosystem.
 */
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.List;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

SceneManager world = new SceneManager();

float mySize = 2000f;
int currentTick = 0;
void setup() {
  size(2000, 2000);
  //fullScreen();
  background(255);
  world.addSky(new Sky());
  world.add(new BreedingCreature());
  world.add(new BreedingCreature());
}

// Most of these utility functions are from the previous assignment

int linePointY(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(y1 + dist * sin(angle));
}

int linePointX(int x1, int y1, int x2, int y2, int dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return (int)(x1 + dist * cos(angle));
}

float linePointY(float x1, float y1, float x2, float y2, float dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return y1 + dist * sin(angle);
}

float linePointX(float x1, float y1, float x2, float y2, float dist) {
  float angle = atan2((y2 - y1), (x2 - x1));
  return x1 + dist * cos(angle);
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

float smoothMod(float num, float limit) {
  limit = (limit * 2) - 1;
  float mod = num % (limit + 1);
  float result = mod;
  if ((2 * mod) > (limit + 1)) {
    result = limit - mod + 2;
  }
  return result;
}

float weightedAvg(int a, int b) {
  return b + (a * 0.1);
}

float weightedAvg(float a, float b) {
  return b + (a * 0.1);
}

float weightedAvg(int a, int b, float c) {
  return b + (a * c);
}

double dblScaledRandom() {
  return Math.random() * mySize;
}
float scaledRandom() {
  return (float)dblScaledRandom();
}
int intScaledRandom() {
  return (int)dblScaledRandom();
}
double dblScaledRandom(double scale) {
  return Math.random() * scale;
}
double dblScaledRandom(int scale) {
  return Math.random() * scale;
}
double dblScaledRandom(float scale) {
  return Math.random() * scale;
}
float scaledRandom(float scale) {
  return (float)dblScaledRandom(scale);
}
float scaledRandom(int scale) {
  return (float)dblScaledRandom(scale);
}
float scaledRandom(double scale) {
  return (float)dblScaledRandom(scale);
}
int intScaledRandom(double scale) {
  return (int)dblScaledRandom(scale);
}
int intScaledRandom(float scale) {
  return (int)dblScaledRandom(scale);
}
int intScaledRandom(int scale) {
  return (int)dblScaledRandom(scale);
}


Creature randomCreatureType() {
  Creature newCreature = new BreedingCreature();
  switch ((int)(Math.random() * 3)) {
  case 0:
    newCreature = new BreedingCreature();
    break;
  case 1:
    newCreature = new ShapeChangingCreature();
    break;
  case 2:
    newCreature = new ColorCreature();
    break;
  default:
    break;
  }
  return newCreature;
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


class Wanderer {
  private final float followTendency;
  private final int id;
  private final float specifiedX;
  private final float specifiedY;
  final float ellipseStartX;
  final float ellipseStartY;
  public Wanderer(float initFollowTendency, float x, float y) {
    this.followTendency = initFollowTendency;
    this.specifiedX = x;
    this.specifiedY = y;
    this.ellipseStartX = x;
    this.ellipseStartY = y;
    if (initFollowTendency == 0) {
      this.id = 0;
    } else if (initFollowTendency == 1) {
      this.id = 1;
    } else {
      this.id = (int)(initFollowTendency*10);
    }
  }
  int step = 0;
  double memory[] = new double[10000];
  int strokeColor[] = new int[3];
  int innerColor[] = new int[3];
  int midColor[] = new int[3];
  int outerColor[] = new int[3];
  float ellipsePosX=this.specifiedX;
  float ellipsePosY=this.specifiedY;
  float ellipseHomeX=this.specifiedX;
  float ellipseHomeY=this.specifiedY;
  float ellipsePrevPosX=this.specifiedX;
  float ellipsePrevPosY=this.specifiedY;
  float personalityCached=0;
  float moodCached=0;
  float speed=0;
  void remember(float value) {
    if (step >= 10000) {
      step = 0;
    } 
    memory[step]=(value + memory[step]) / 2;
    step=step + 1;
  }

  float getPersonality() {
    float result=(float)Arrays.stream(memory).average().getAsDouble();
    personalityCached=result;
    return result;
  }

  float getMood() {
    double[] mem=Arrays.copyOfRange(memory, Math.max(step - 100, 0), Math.max(step, 1));
    float result=(float)Arrays.stream(mem).average().getAsDouble();
    moodCached=result;
    return result;
  }

  void click() {
    remember(100000);
  }

  void tick(float monitor) {
    remember(smoothMod((ellipsePosX + mouseX) / 2, mySize));
    remember(smoothMod((ellipsePosY + mouseY) / 2, mySize));

    ellipsePrevPosX=ellipsePosX;
    ellipsePrevPosY=ellipsePosY;
    ellipseHomeX=lerp(ellipseStartX, ellipsePrevPosX, followTendency);
    ellipseHomeY=lerp(ellipseStartY, ellipsePrevPosY, followTendency);

    int mouseDistFromHome=(int)dist(ellipseHomeX, ellipseHomeY, mouseX, mouseY);

    if ( mouseDistFromHome < (500 + getPersonality()) * 3.5) {
      ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);
      ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);

      if ( mouseDistFromHome > ((500 + (getPersonality() / 2)) * 1.5)) {
        try {
          ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome / 250);
        }
        catch(Exception e) {
          ellipsePosY=ellipseHomeY;
        }
        try {
          ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome / 250);
        }   
        catch(Exception e) {
          ellipsePosX=ellipseHomeX;
        }
      }
    }
    speed=((float)getMood() / 600.0) + (monitor / 30);
    System.out.println(Integer.toString(id)+"|Mood="+Float.toString(getMood())+"|Pty="+Float.toString(getPersonality())+"|Spd="+Integer.toString((int)(speed*100))+"|Mdist="+Float.toString(mouseDistFromHome)+"|Mon="+Float.toString(monitor));
    ellipsePosX=(int)((ellipsePosX * speed) + ellipsePrevPosX) / 2;
    ellipsePosY=(int)((ellipsePosY * speed) + ellipsePrevPosY) / 2;

    strokeColor[0]=(int)weightedAvg(strokeColor[0], getMood() * 10);
    strokeColor[1]=(int)weightedAvg(strokeColor[1], smoothMod(getPersonality(), 255));
    strokeColor[2]=(int)weightedAvg(strokeColor[2], ((getMood() * 10) + getPersonality()) / 2);
    stroke(strokeColor[0], strokeColor[1], strokeColor[2]);

    innerColor[0]=(int)weightedAvg(smoothMod(ellipsePosX, 255), smoothMod((int)(mouseX/followTendency), 255));
    innerColor[1]=(int)weightedAvg(smoothMod(ellipsePosY, 255), smoothMod((int)(mouseY/followTendency), 255));
    innerColor[2]=(int)weightedAvg(smoothMod(((int)weightedAvg(ellipsePosY * 100, ellipsePosX * 100)) / 100, 255), ((mouseX/4+mouseY/4) % 255));
    fill(innerColor[0], innerColor[1], innerColor[2]);
    ellipse(ellipsePosX, ellipsePosY, 400 + (230 * followTendency), 400 + (230 * followTendency));

    midColor[0]=(int)weightedAvg(smoothMod(getMood(), 255), smoothMod((int)(mouseX/followTendency), 320));
    midColor[1]=(int)weightedAvg(smoothMod(getMood(), 255), smoothMod((int)(mouseY/followTendency), 320));
    midColor[2]=(int)weightedAvg(smoothMod(getMood(), 255), ((mouseX/4+mouseY/4) % 255));
    fill(midColor[0], midColor[1], midColor[2]);
    ellipse(ellipsePosX, ellipsePosY, 400 + (200 * speed), 400 + (200 * speed));

    outerColor[0]=(int)weightedAvg(smoothMod(getPersonality(), 255), smoothMod((int)(mouseY/followTendency), 300));
    outerColor[1]=(int)weightedAvg(smoothMod(getPersonality(), 255), smoothMod((int)(mouseX/followTendency), 300));
    outerColor[2]=(int)weightedAvg(smoothMod(getPersonality(), 255), ((mouseX/4+mouseY/4) % 255));
    fill(outerColor[0], outerColor[1], outerColor[2]);
    ellipse(ellipsePosX, ellipsePosY, 400, 400);
  }
}

public class LifeComparator implements Comparator<Life> {
  @Override
    public int compare(Life a, Life b) {
    return a.compareTo(b);
  }
}


class BulkWanderer {
  Wanderer wanderer0;
  Wanderer wanderer3;
  Wanderer wanderer7;
  Wanderer wanderer1;
  BulkWanderer(float x, float y) {
    this.wanderer0=new Wanderer(0f, x, y);
    this.wanderer3=new Wanderer(0.3, x, y);
    this.wanderer7=new Wanderer(0.7, x, y);
    this.wanderer1=new Wanderer(1f, x, y);
  }
  void tick(float monitor) {
    this.wanderer0.tick(monitor);
    this.wanderer3.tick(monitor);
    this.wanderer7.tick(monitor);
    this.wanderer1.tick(monitor);
  }
  void click() {
    this.wanderer0.click();
    this.wanderer3.click();
    this.wanderer7.click();
    this.wanderer1.click();
  }
}

BulkWanderer topLeftBulkWanderer = new BulkWanderer(0, 0);
BulkWanderer topRightBulkWanderer = new BulkWanderer(0, mySize);
BulkWanderer lowerLeftBulkWanderer = new BulkWanderer(mySize, 0);
BulkWanderer lowerRightBulkWanderer = new BulkWanderer(mySize, mySize);
BulkWanderer centerBulkWanderer = new BulkWanderer(mySize / 2, mySize / 2);

class Life implements Comparable<Life> {
  protected Integer zIndex = 0;
  int dead=0;
  float x = 0f;
  float y = 0f;
  float size = 0f;
  void draw() {
  };
  void update() {
  };
  @Override
    public int compareTo(Life l) {
    int result = zIndex.compareTo(l.zIndex);
    //System.out.println(Integer.toString(this.zIndex)+this.getClass().getName()+Integer.toString(l.zIndex)+l.getClass().getName()+Integer.toString(result));
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


class Sky extends Life {
  Sun sun = (Sun)world.add(new Sun(2));
  void draw() {
    if(dead == 1) {
      System.out.println("Drawn while dead");
    }
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
  Sky sky;
  Life add(Life newResident) {
    if (this.updating) {
      this.addDeferred(newResident);
    } else {
      residents.add(newResident);
    }
    return newResident;
  }
  void addSky(Sky sky) {
    this.add(sky);
  }
  void addDeferred(Life newResident) {
    deferredResidents.add(newResident);
  }
  void update() {
    this.updating = true;
    Collections.sort(residents, new LifeComparator());
    //System.out.println("Resdients:"+residents.size());
    if(residents.size() > 10) {
      residents.get(0).dead=1;
      residents.remove(0);
    }
    for (Life resident : residents) {
      if(resident.dead == 0) {
        //System.out.println(resident.getClass().getName());
        resident.update();
        if (resident.x < 0) {
          resident.x = mySize;
        }
        if (resident.y < 0) {
          resident.y = mySize;
        }
        if (resident.x > mySize) {
          resident.x = 0f;
        }
        if (resident.y > mySize) {
          resident.y = 0f;
        }
        //System.out.println(resident.x);
        //System.out.println(resident.y);
        //System.out.println(resident.size);
        resident.draw();
      }
    }
    for (Iterator<Life> deferredResidentIterator = deferredResidents.iterator(); deferredResidentIterator.hasNext(); ) {
      residents.add(deferredResidentIterator.next());
      deferredResidentIterator.remove();
    }
    time += 1;
    this.updating = false;
  }
}

class Creature extends Life {
  Integer waterSatiation = 0;
  Integer jealousy = 0;
  void draw() {
    fill(255 * (waterSatiation / 10), 255 * (waterSatiation / 10), 255 * (waterSatiation / 10));
    ellipse(x, y, size, size);
  }
  void disperse() {
    // Wanting space state: iterate through neighbors and find any that are too close
    for (Iterator<Life> residentIterator = world.residents.iterator(); residentIterator.hasNext(); ) {
      Life thisNeighbor = residentIterator.next();
      if (thisNeighbor instanceof Creature) {
        Creature thisNeighborCreature = (Creature)thisNeighbor;
        float neighborX = ((thisNeighborCreature.x + thisNeighborCreature.size) / 2);
        float neighborY = ((thisNeighborCreature.y + thisNeighborCreature.size) / 2);
        float thisX = (((2*this.x) + this.size) / 2);
        float thisY = (((2*this.y) + this.size) / 2);
        if (dist(neighborX, neighborY, thisX, thisY) < this.size) {
          //System.out.println("tooclose. Old "+this.x+", "+this.y);
          // If it's too close to another creature, it will try to get away, by moving a few places.
          this.x = (this.x + scaledRandom()) / 2;
          this.y = (this.y + scaledRandom()) / 2;
          //System.out.println("Moved to"+this.x+", "+this.y);
        }
      }
    }
  }
}

class BreedingCreature extends Creature {
  Integer waterSatiation = 0;
  Integer jealousy = 0;
  void draw() {
    fill(255 * (waterSatiation / 10), 255 * (waterSatiation / 10), 255 * (waterSatiation / 10));
    ellipse(x, y, size, size);
  }
  void update() {
    this.disperse();
    if (overCircle((int)x, (int)y, 100 + waterSatiation) && mousePressed) {
      // Being watered by human
      waterSatiation = waterSatiation + 10;
    } else {
      // General living state: depleting water at slow rate. Water depletion increases as sun gets hotter.
      if (waterSatiation > 0) {
        try {
          waterSatiation = waterSatiation - (world.sky.sun.temperature / 30);
        }
        catch (Exception e) {
        }
      }
    }
    // Reproduction state
    if (waterSatiation > 200) {
      // It's fully healthy, doesn't need any more water. So, it has enough energy to safely reproduce.
      world.add(randomCreatureType());
      waterSatiation = 180;
    }
    // Also get its jealousy
    // Calculate jealousy
    for (Iterator<Life> residentIterator = world.residents.iterator(); residentIterator.hasNext(); ) {
      Life thisNeighbor = residentIterator.next();
      if (thisNeighbor instanceof Creature) {
        Creature thisNeighborCreature = (Creature)thisNeighbor;
        if (thisNeighborCreature.waterSatiation > 2 * this.waterSatiation) {
          this.jealousy = this.jealousy + 1;
        }
        if (thisNeighborCreature.waterSatiation < (this.waterSatiation / 2)) {
          this.jealousy = this.jealousy - 1;
        }
        // If very jealous, steal water from neigbor.
        if (this.jealousy > 10) {
          thisNeighborCreature.waterSatiation = thisNeighborCreature.waterSatiation - 2;
          this.waterSatiation = this.waterSatiation + 2;
          this.jealousy = this.jealousy / 2; // Got catharsis through robbery
        }
      }
    }
    this.size = 100 + (waterSatiation); // 100 is its base size, it grows with the more water it has
  }
}

class ShapeChangingCreature extends Creature {
  Integer[] data = new Integer[] { intScaledRandom(4), intScaledRandom(), 
    intScaledRandom(), intScaledRandom(), intScaledRandom(), 
    intScaledRandom(), intScaledRandom(), intScaledRandom(), 
    intScaledRandom() };
  void draw() {
    switch (data[0]) {
    case 0:
      triangle(data[1], data[2], data[3], data[4], data[5], data[6]);
      break;
    case 1:
      rect(data[1], data[2], data[3], data[4]);
      break;
    case 2:
      quad(data[1], data[2], data[3], data[4], data[5], data[6], data[7], data[8]);
      break;
    case 3:
      ellipse(data[1], data[2], data[3], data[4]);
      break;
    case 4:
      arc(data[1], data[2], data[3], data[4], data[5], data[6]);
      break;
    default:
      break;
    }
  }
  void update() {
    this.disperse();
  }
}

class ColorCreature extends Creature {
  Integer[] data = new Integer[] { intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), intScaledRandom(50) };
  float width=scaledRandom(350);
  float height=scaledRandom(350);
  ColorCreature() {
    x = scaledRandom();
    y = scaledRandom();
  }
  void draw() {
    fill(data[0], data[1], data[2], data[3]);
    stroke(data[4], data[5], data[6], data[7]);
    strokeWeight(data[8]);
    x += (float)random(-5, 5);
    y += (float)random(-5, 5);
    rect(x, y, width, height);
  }
  void update() {
    this.disperse();
  }
}

class CreatureTemplate extends Creature {
  Integer[] data = new Integer[] { (int)(Math.random() * 4), intScaledRandom(), 
    intScaledRandom(), intScaledRandom(), intScaledRandom(), 
    intScaledRandom(), intScaledRandom(), intScaledRandom(), 
    intScaledRandom() };
  void draw() {
    ellipse(x, y, size, size);
  }
  void update() {
    this.disperse();
  }
}

void draw() {
  world.update();
  //System.out.println("Done drawing");
}