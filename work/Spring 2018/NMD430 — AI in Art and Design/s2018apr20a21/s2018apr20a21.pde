/**
 * Title: Final Assignment
 * Name: Elliot Chandler (Wallace)
 * Date: 2018 May 6
 * Description: A virtual interactive ecosystem.
 */

/* Configuration */ /* The values on the left are recommended for full HD monitors; the values on the right are recommended for ultra HD monitors. */
float myXSize = 3700f; /* 1920; 3700 */
float myYSize = 1940f; /* 1030; 1940 */
float displayScalingFactor = 1; /* .25; 1 */
int minimumCreatures = 10;
int maximumCreatures = 30;
int messageDisplayTime = 200;
int lifespanCap = 2000;
void setup() {
  size(3700, 1940);
  //fullScreen();
  background(255);
  world.addSky(new Sky());
  world.add(new BreedingCreature());
  /* SVG images are in the public domain. */
  cursor = loadShape("cursor.svg");
  cursorClicked = loadShape("cursorClicked.svg");
}

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import java.util.List;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

int currentTick = 0;
SceneManager world = new SceneManager();
PShape cursor;
PShape cursorClicked;

List<String> names = Arrays.asList("blah", "bar", "mary",
"jane", "alev", "iler", "echo", "bright", "storm", "last", "dance", "uns", "et",
"un", "def", "ined", "ke", "sha", "256", "ruki", "vverh", "canna", "bis", "pix",
"ie", "fae", "ry", "fairy", "weed", "alembic", "professor", "corvus", "corax",
"rae", "wist", "y", "machynlleth", "głupie", "chomiki", "charanjit", "singh", "foo",
"baz", "qux", "lirin", "elen", "esar", "futuramerlin", "futura", "merlin", "red",
"rum", "sergey", "lazarev", "zhukov", "tree", "spirit", "dragon", "flame",
"lilith", "inanna", "lucifer", "krillin", "cute", "blood", "artemis", "fey",
"dream", "er", "bobella", "padu", "andra", "pradesh", "unive", "rsity", "cutie",
"shroom", "s", "meredith", "nancy", "springer", "rowan", "hood", "fish", "hungry",
"fauna", "job", "merry", "lobster", "salmon", "drippins", "sammitch", "tongue",
"jerky", "flora", "chas", "ling", "ting", "earth", "sacredland", "kde", "tux",
"elliot", "chandler", "amman", "leaf", "gold", "copper", "coppiced", "beech",
"iar", "let", "ly", "elli", "nara", "na", "aureate", "luxa", "breath", "aeol",
"us", "ia", "oak", "en", "chan", "nyaa", "blossom", "ghost", "shadow", "corpse",
"asriel", "aswell", "silver", "shimmer", "grass", "moor", "hawk", "kitty",
"pretty", "golden", "light", "moon", "archive", "gnu", "linux", "libre",
"flight", "faery", "lira", "lyra", "lyubov", "tfanil", "tveren", "anoé",
"loki", "sayyed", "magical", "magic", "spider", "crab", "bleak", "raven", "death",
"bringer", "bright", "happy", "sacred", "dancing", "heart", "wolf", "pixie",
"ember", "party", "flight", "gold", "creeping-death", "ebenezer", "margaret",
"maude", "harold", "temperance", "prudence", "nancy", "crystal", "fire",
"autumn", "winter", "fall", "spring", "summer", "crocus", "lily", "lilac",
"clover", "buttercup", "rose", "tradukuh", "nat", "dandelion", "violet",
"wind", "angel", "flutter", "glimmer", "flitter", "shine", "shining", "shiny",
"^.^", "^_^", ":3", "<3", "^~^", "yume", "nexus", "no", "miko", "hatsune",
"miku", "ripred", "bloodlet", "shatter", "fractured", "ember", "mind", "iridescent",
"olive", "alexander", "ppe btw lelxd", "oliver", "luka", "alina", "green",
"white", "black", "lavender", "mauve", "verdant", "sylvan", "fantasy", "cuddle",
"kokiri", "horror", "rye", "bran", "gwen", "​no", "rain", "snow", "mist",
"frost", "young", "old", "sleeping", "dusk", "dawn", "beyond", "anna", "anaral",
"ancient", "pale", "amber", "goku", "betrayal", "xan", "ilien", "alien",
"arien", "ariel", "ilendrith", "eärendil", "luthien", "tinuviel", "lituaat",
"ataniliez", "iridessa", "ivy", "blade", "sword", "knife", "dagger", "berry",
"mud", "lifted", "mudding", "dirt", "rims", "nose", "git", "gloopy", "glitter",
"dismember", "fuzzy", "fuzzle", "nuzzle", "seth", "sebas", "abel", "jeanette",
"shots", "beerpong", "kangaroo", "cluck", "lapchicken", "lap", "sweet",
"dope", "shiver", "mysterious", "misty", "yellowriver", "chaika", "shalltear",
"lina", "inverse", "zelgadis", "recettear", "eryi", "surgery", "psycho",
"genki", "maybasket", "may", "soil", "bazaar", "fez", "wiggle", "wiggly",
"changeling", "greaser", "drift", "spindrift", "drifter", "transmission",
"differential", "driveshaft", "carburetor", "headgasket", "007", "Nara Nara Na",
"driftwood", "faery", "aelfe", "elf", "elfin", "elven", "mushroom", "shyren",
"shy", "rubble", "pwnage", "awesome", "420", "666", "coven", "rein", "pharaoh",
"silent", "tired", "swag", "epic", "morning", "mourning", "evening", "eventide",
"faun", "unicorn", "garden", "zaar", "gaara", "nikki", "akki", "Marty", "McFly",
"DeLorean", "cream", "vanilla", "upholstery", "woven", "word", "fell", "glade",
"skeletal", "​of the", "bones", "​x", "nox", "luma", "killua", "illumi",
"alluka", "milluki", "kalluto", "coriaxar", "coriander", "cloven", "lyndley",
"craven", "flesh", "parasite", "bulletproof", "vodník", "stoner", "eureka",
"glass", "mirror", "shadowy", "shaded", "shade", "shady", "grove", "legend",
"lotus", "kae", "active", "psychoactive", "nova", "super", "galaxy", "nebula",
"dust", "star", "stardust", "club", "wub", "dubstep", "drop", "bass", "basshead",
"sleepy", "oryx", "sintel", "stoned", "hairy", "lalafell", "enola", "aerith");

// These are functions to help out by doing various calculations.

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
float getSize(Boolean getXValue) {
  if(getXValue) {
    return myXSize;
  }
  return myYSize;
}
float scaleToX(float value) {
  return (float)scaleToX((double)value);
}
float scaleToY(float value) {
  return (float)scaleToY((double)value);
}
float scaleToXY(float value) {
  return (float)scaleToXY((double)value);
}
double scaleToX(double value) {
  return (value * 2000) / (myYSize * (1 / displayScalingFactor));
}
double scaleToY(double value) {
  return (value * 2000) / (myXSize * (1 / displayScalingFactor));
}
double scaleToXY(double value) {
  return (value * 2000) / (((myXSize + myYSize) / 2) * (1 / displayScalingFactor));
}
double dblScaledRandom(Boolean getXValue) {
  return Math.random() * getSize(getXValue);
}
float scaledRandom(Boolean getXValue) {
  return (float)dblScaledRandom(getXValue);
}
int intScaledRandom(Boolean getXValue) {
  return (int)dblScaledRandom(getXValue);
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

int randomNegativeFactor() {
  if(Math.random() < 0.5) {
    return -1;
  }
  else {
    return 1;
  }
}

Creature randomCreatureType(String cause) {
  Creature newCreature = new ShapeChangingCreature();
  switch ((int)(Math.random() * 7)) {
  case 0:
    newCreature = new BreedingCreature();
    break;
  case 1:
    newCreature = new ShapeChangingCreature();
    break;
  case 2:
    newCreature = new ColorCreature();
    break;
  case 3:
    newCreature = new EllipseCreature();
    break;
  case 4:
    newCreature = new Wanderer((float)Math.random(), scaledRandom(true), scaledRandom(false));
    break;
  default:
    break;
  }
  newCreature.greet(cause);
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

public class LifeComparator implements Comparator<Life> {
  @Override
    public int compare(Life a, Life b) {
    return a.compareTo(b);
  }
}

String uppercaseFirstLetter(String input) {
  /* based on https://stackoverflow.com/questions/3904579/how-to-capitalize-the-first-letter-of-a-string-in-java */
  return input.substring(0, 1).toUpperCase() + input.substring(1);
}

String randomName() {
  return uppercaseFirstLetter(names.get(intScaledRandom(names.size())));
}

void constrainedRect(float left,float top,float width,float height) {
  if((left + width) > myXSize) {
    left = myXSize - width;
    //System.out.println("Constrained rect left -");
  }
  if((left + width) < 0) {
    left = width;
    //System.out.println("Constrained rect left +");
  }
  if((top + height) > myYSize) {
    top = myYSize - height;
    //System.out.println("Constrained rect top -");
  }
  if((top + height) < 0) {
    top = height;
    //System.out.println("Constrained rect top +");
  }
  rect(left,top,width,height);
}

void constrainedText(String text, float left,float top,float width,float height) {
  if((left + width) > myXSize) {
    left = myXSize - width;
  }
  if((left + width) < 0) {
    left = width;
  }
  if((top + height) > myYSize) {
    top = myYSize - height;
  }
  if((top + height) < 0) {
    top = height;
  }
  text(text, left,top,width,height);
}

String getWordWithIndefiniteArticle(String input) {
  if (
    (uppercaseFirstLetter(input).substring(0, 1).equals("A")) ||
    (uppercaseFirstLetter(input).substring(0, 1).equals("E")) || 
    (uppercaseFirstLetter(input).substring(0, 1).equals("I")) || 
    (uppercaseFirstLetter(input).substring(0, 1).equals("O")) || 
    (uppercaseFirstLetter(input).substring(0, 1).equals("U"))
  ) {
    /* It is a vowel so say with "an" */
    return "an " + input;
  }
  else {
    /* It is not, so say with "a" */
    return "a " + input;
  }
}

class SceneManager {
  private List<Life> residents = new ArrayList<Life>();
  private List<Life> deferredResidents = new ArrayList<Life>();
  Integer time = 0;
  Boolean updating = false;
  Sky sky;
  Life add(Life newResident) {
    // System.out.println("Population "+this.getPopulation()+"; maximum "+maximumCreatures);
    if(this.getPopulation() <= maximumCreatures) {
      // System.out.println("OK,added.");
      if (this.updating) {
        this.addDeferred(newResident);
      } else {
        residents.add(newResident);
      }
    }
    return newResident;
  }
  void addSky(Sky sky) {
    this.add(sky);
  }
  void addDeferred(Life newResident) {
    if(this.getPopulation() <= maximumCreatures) {
      deferredResidents.add(newResident);
    }
  }
  void click() {
    for (Life resident : residents) {
      resident.click();
    }
  }
  Integer getPopulation() {
    Integer population = 0;
    for (Life resident : residents) {
      if(resident.dead == 0) {
        population++;
      }
    }
    return population;
  }
  void update() {
    this.updating = true;
    Collections.sort(residents, new LifeComparator());
    //System.out.println("Residents:"+this.getPopulation());
    if(this.getPopulation() > maximumCreatures) {
      residents.get(0).die("overpopulation");
    }
    if(residents.size() < minimumCreatures) {
      world.add(randomCreatureType("underpopulation"));
    }
    for (Life resident : residents) {
      resident.drawMessage();
      if(resident.dead == 0) {
        //System.out.println(resident.getClass().getName());
        resident.update();
        if (resident.x < 0) {
          resident.x = myXSize;
        }
        if (resident.y < 0) {
          resident.y = myYSize;
        }
        if (resident.x > myXSize) {
          resident.x = 0f;
        }
        if (resident.y > myYSize) {
          resident.y = 0f;
        }
        //System.out.println(resident.x);
        //System.out.println(resident.y);
        //System.out.println(resident.size);
        resident.draw();
      }
      else {
        if(this.getPopulation() <= maximumCreatures) {
          deferredResidents.add(resident);
        }
      }
    }
    /* Process asynchronously modified residents */
    for (Iterator<Life> deferredResidentIterator = deferredResidents.iterator(); deferredResidentIterator.hasNext(); ) {
      Life resident=deferredResidentIterator.next();
      if(resident.dead == 2) {
        residents.remove(resident);
      }
      else {
        if(resident.dead == 0) {
          if(this.getPopulation() <= maximumCreatures) {
            residents.add(resident);
          }
        }
      }
      deferredResidentIterator.remove();
    }
    time += 1;
    this.updating = false;
  }
}

class Life implements Comparable<Life> {
  protected Integer zIndex = 0;
  int dead=0;
  int lifespan=(int)(lifespanCap * Math.random());
  int aliveTime=0;
  float x = 0f;
  float y = 0f;
  float size = 0f;
  String name="Unset";
  int nameSet=0;
  String message="";
  int messageSet=0;
  int messageAge=0;
  void drawMessage() {
    //System.out.println(this.x);
    //System.out.println(this.y);
    if(this.messageSet == 1) {
      if(this.messageAge < messageDisplayTime) {
        textSize(scaleToXY(50f));
        fill(255,255,255);
        constrainedRect(this.x + scaleToX(300f),this.y + scaleToY(300f),scaleToX(500f),scaleToY(500f));
        //triangle(this.x, this.y, this.x + 300, this.y + 300, this.x + 200, this.y + 200);
        fill(0,0,0);
        constrainedText(this.message, this.x + scaleToX(300f), this.y + scaleToY(300f),scaleToX(500f),scaleToY(500f));
        this.messageAge=this.messageAge+1;
      }
      else {
        if(this.dead == 1) {
          this.dead=2;
        }
      }
    }
    else {
      if(this.dead == 1) {
        this.dead=2;
      }
    }
  }
  void message(String message) {
    if(! this.message.equals(message)) {
      System.out.println(message);
      this.messageAge=0;
      this.message=message;
      this.messageSet=1;
    }
  }
  void greet(String cause) {
    this.message("Hi! I'm "+this.getCreatureName()+", "+getWordWithIndefiniteArticle(this.getCreatureType())+", born from "+cause+".");
  }
  String getCreatureType() {
    return "Creature";
  }
  String getCreatureName() {
    if(this.nameSet == 0) {
      String newName = "Unset";
      switch ((int)(Math.random() * 9)) {
        case 0:
          newName = randomName();
          break;
        case 1:
          newName = randomName()+"-"+randomName();
          break;
        case 2:
          newName = randomName()+" "+randomName();
          break;
        case 3:
          newName = randomName()+(randomName().toLowerCase());
          break;
        case 4:
          newName = randomName()+(randomName().toLowerCase())+(randomName().toLowerCase());
          break;
        case 5:
          newName = randomName()+" "+randomName()+(randomName().toLowerCase());
          break;
        case 6:
          newName = randomName()+" "+randomName()+" "+randomName();
          break;
        case 7:
          newName = randomName()+(randomName().toLowerCase())+" "+randomName();
          break;
        case 8:
          newName = randomName()+(randomName().toLowerCase())+" "+randomName()+(randomName().toLowerCase());
          break;
        default:
          break;
      }
      this.name=newName;
      this.nameSet=1;
    }
    return this.name;
  }
  void click() {
  }
  void die(String cause) {
    if(this.dead == 0) {
      this.dead = 1;
      this.message(this.getCreatureName()+", "+getWordWithIndefiniteArticle(this.getCreatureType())+", has died from "+cause+".");
    }
  }
  void updateLifespan() {
    this.aliveTime = this.aliveTime + 1;
    if(this.aliveTime > this.lifespan) {
      this.die("old age of "+aliveTime+" frames");
    }
  }
  void draw() {
  };
  void update() {
    this.updateLifespan();
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
    if(dead == 1) {
      System.out.println("Drawn while dead");
    }
    fill(255, 255, 255);
    ellipse((myXSize - (myXSize * (temperature / 100.0))), (myYSize - (myYSize * (smoothMod(temperature, 50) / 100.0))), 100, 100);
  }
  String getCreatureType() {
    return "Sun";
  }
  void update() {
    this.updateLifespan();
  }
}


class Sky extends Life {
  Sun sun = (Sun)world.add(new Sun(0));
  void draw() {
    if(dead == 1) {
      System.out.println("Drawn while dead");
    }
    fill(smoothMod(sun.temperature, 120), sun.temperature / 2, (sun.temperature * 2) + 20, 5);
    rect(0, 0, myXSize, myYSize);
  }
  String getCreatureType() {
    return "Sky";
  }
  void update() {
    sun.temperature = smoothMod(world.time, 100);
    this.updateLifespan();
  }
}

class Creature extends Life {
  /* This is the base class of creatures that other creatures inherit from. */
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
          //System.out.println("tooclose. Old "+this.x+", "+this.y+", dist"+dist(neighborX, neighborY, thisX, thisY));
          // If it's too close to another creature, it will try to get away, by moving a few places.
          this.x = ((this.x * 30) + (randomNegativeFactor() * scaledRandom(true))) / 31;
          this.y = ((this.y * 30) + (randomNegativeFactor() * scaledRandom(false))) / 31;
          //System.out.println("Moved to"+this.x+", "+this.y);
        }
      }
    }
  }
}

class Wanderer extends Creature {
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
  float monitor = 1;
  void remember(float value) {
    if (step >= 10000) {
      step = 0;
    } 
    memory[step]=(value + memory[step]) / 2;
    step=step + 1;
  }

  String getCreatureType() {
    return "Wanderer";
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

  void draw() {
    this.updateLifespan();
    remember(smoothMod((ellipsePosX + mouseX) / 2, myXSize));
    remember(smoothMod((ellipsePosY + mouseY) / 2, myYSize));

    ellipsePrevPosX=ellipsePosX;
    ellipsePrevPosY=ellipsePosY;
    ellipseHomeX=lerp(ellipseStartX, ellipsePrevPosX, followTendency);
    ellipseHomeY=lerp(ellipseStartY, ellipsePrevPosY, followTendency);

    int mouseDistFromHome=(int)dist(ellipseHomeX, ellipseHomeY, mouseX, mouseY);

    if ( mouseDistFromHome < (scaleToXY(500f) + getPersonality()) * scaleToXY(3.5f)) {
      ellipsePosY=linePointY(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);
      ellipsePosX=linePointX(ellipseHomeX, ellipseHomeY, mouseX, mouseY, mouseDistFromHome);

      if ( mouseDistFromHome > ((scaleToXY(500f) + (getPersonality() / 2)) * scaleToXY(1.5f))) {
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
    speed=((float)getMood() / scaleToXY(600f)) + (monitor / scaleToXY(30f));
    //System.out.println(Integer.toString(id)+"|Mood="+Float.toString(getMood())+"|Pty="+Float.toString(getPersonality())+"|Spd="+Integer.toString((int)(speed*100))+"|Mdist="+Float.toString(mouseDistFromHome)+"|Mon="+Float.toString(monitor));
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
    ellipse(ellipsePosX, ellipsePosY, scaleToX(400f) + (scaleToX(230f) * followTendency), scaleToY(400f) + (scaleToY(230f) * followTendency));

    midColor[0]=(int)weightedAvg(smoothMod(getMood(), 255), smoothMod((int)(mouseX/followTendency), 320));
    midColor[1]=(int)weightedAvg(smoothMod(getMood(), 255), smoothMod((int)(mouseY/followTendency), 320));
    midColor[2]=(int)weightedAvg(smoothMod(getMood(), 255), ((mouseX/4+mouseY/4) % 255));
    fill(midColor[0], midColor[1], midColor[2]);
    ellipse(ellipsePosX, ellipsePosY, scaleToX(400f) + (scaleToX(200f) * speed), scaleToY(400f) + (scaleToY(200f) * speed));

    outerColor[0]=(int)weightedAvg(smoothMod(getPersonality(), 255), smoothMod((int)(mouseY/followTendency), 300));
    outerColor[1]=(int)weightedAvg(smoothMod(getPersonality(), 255), smoothMod((int)(mouseX/followTendency), 300));
    outerColor[2]=(int)weightedAvg(smoothMod(getPersonality(), 255), ((mouseX/4+mouseY/4) % 255));
    fill(outerColor[0], outerColor[1], outerColor[2]);
    ellipse(ellipsePosX, ellipsePosY, scaleToX(400f), scaleToY(400f));
  }
}

class BreedingCreature extends Creature {
  Integer waterSatiation = 0;
  Integer jealousy = 0;
  String getCreatureType() {
    return "Breeding Creature";
  }
  void draw() {
    fill(255 * (waterSatiation / 10), 255 * (waterSatiation / 10), 255 * (waterSatiation / 10));
    ellipse(x, y, size, size);
  }
  void update() {
    this.updateLifespan();
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
    if (waterSatiation > scaleToXY(200f)) {
      // It's fully healthy, doesn't need any more water. So, it has enough energy to safely reproduce.
      world.add(randomCreatureType("a breeding creature"));
      waterSatiation = (int)scaleToXY(50f);
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
    this.size = scaleToXY(100f) + (waterSatiation); // 100 is its base size, it grows with the more water it has
  }
}

class ShapeChangingCreature extends Creature {
  /* This kind of creature has a random shape. */
  Integer[] data = new Integer[] { intScaledRandom(4), intScaledRandom(true), 
    intScaledRandom(false), intScaledRandom(true), intScaledRandom(false), 
    intScaledRandom(true), intScaledRandom(false), intScaledRandom(true), 
    intScaledRandom(false) };
  double rotationRate = dblScaledRandom(2);
  float rotation = 0;
  int rotationX = intScaledRandom(true);
  int rotationY = intScaledRandom(false);
  Boolean rotating = false;
  final int rotationRandomNegative = randomNegativeFactor();
  String getCreatureType() {
    return "Shape-Changing Creature";
  }
  void draw() {
    /* pushMatrix to allow restoring position after drawing */
    pushMatrix();
    translate(rotationX, rotationY);
    this.x=rotationX;
    this.y=rotationY;
    float rotationTempStatus = rotationRandomNegative * ((((rotation/360)*TWO_PI) * 2) - TWO_PI);
    rotate(rotationTempStatus);
    //System.out.println("Rotated by "+rotationTempStatus);
    /* Choose what shape to be */
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
    /* popMatrix restores position after drawing */
    popMatrix();
  }
  void update() {
    this.updateLifespan();
    //this.disperse();
    if(random(0,2) < 1) {
      this.rotating = true;
    }
    if(this.rotating) {
      this.rotation += this.rotationRate;
      if(this.rotation == 360) {
        this.rotation = 0;
        this.rotating = false;
      }
    }
  }
}

class ColorCreature extends Creature {
  /* This type of creature changes the way other creatures are drawn, and is a wiggly rectangle. */
  Integer[] data = new Integer[] { intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), intScaledRandom(50) };
  float width=scaledRandom(scaleToXY(350f));
  float height=scaledRandom(scaleToXY(350f));
  String getCreatureType() {
    return "Color Creature";
  }
  ColorCreature() {
    x = scaledRandom(true);
    y = scaledRandom(false);
  }
  void draw() {
    /* By setting fill, stroke, and strokeWeight, but not restoring them,
       it will influence these until they are next set. */
    fill(data[0], data[1], data[2], data[3]);
    stroke(data[4], data[5], data[6], data[7]);
    strokeWeight(data[8]);
    x += (float)random(scaleToX(-5f), scaleToX(5f));
    y += (float)random(scaleToY(-5f), scaleToY(5f));
    rect(x, y, width, height);
  }
  void update() {
    this.updateLifespan();
    //this.disperse();
  }
}

class EllipseCreature extends Creature {
  /* This is a wiggly ellipse. */
  Integer[] data = new Integer[] { intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), 
    intScaledRandom(255), intScaledRandom(255), intScaledRandom(50) };
  float width=scaledRandom(scaleToXY(350f));
  float height=scaledRandom(scaleToXY(350f));
  double wiggleAmplitudeX = dblScaledRandom(30);
  double wiggleAmplitudeY = dblScaledRandom(30);
  String getCreatureType() {
    return "Ellipse Creature";
  }
  EllipseCreature() {
    x = scaledRandom(true);
    y = scaledRandom(false);
  }
  void draw() {
    fill(data[0], data[1], data[2], data[3]);
    stroke(data[4], data[5], data[6], data[7]);
    strokeWeight(data[8]);
    x += (float)random((float)scaleToX(-wiggleAmplitudeX), (float)scaleToX(wiggleAmplitudeX));
    y += (float)random((float)scaleToY(-wiggleAmplitudeY), (float)scaleToY(wiggleAmplitudeY));
    ellipse(x, y, width, height);
  }
  void update() {
    this.updateLifespan();
  }
}

class CreatureTemplate extends Creature {
  /* This is an example of a creature. */
  Integer[] data = new Integer[] { (int)(Math.random() * 4), intScaledRandom(true), 
    intScaledRandom(false), intScaledRandom(true), intScaledRandom(false), 
    intScaledRandom(true), intScaledRandom(false), intScaledRandom(true), 
    intScaledRandom(false) };
  String getCreatureType() {
    return "Creature Template";
  }
  void draw() {
    ellipse(x, y, size, size);
  }
  void update() {
    this.updateLifespan();
    //this.disperse();
  }
}

void draw() {
  //System.out.println("Done drawing");
  currentTick = currentTick + 1;

  fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/3+mouseY/3) % 255), 5);
  rect(0, 0, myXSize, myYSize);
  /* world.update will update and draw all the creatures. */
  world.update();
  textSize(scaleToXY(80f));
  text(world.getPopulation(), scaleToX(100f), scaleToY(350f));
  if(mousePressed) {
    shape(cursorClicked, (mouseX - (scaleToXY(300f / 2))), (mouseY - (scaleToXY(300f / 2))), scaleToXY(300f), scaleToXY(300f));
  }
  else {
    shape(cursor, (mouseX - (scaleToXY(300f / 2))), (mouseY - (scaleToXY(300f / 2))), scaleToXY(300f), scaleToXY(300f));
  }
}

void mouseClicked() {
  /* This will pass the click event to any creatures that care about it. */
  cursor.disableStyle();
  cursorClicked.disableStyle();
  fill(color(intScaledRandom(255), intScaledRandom(255), intScaledRandom(255), intScaledRandom(255)));  
  stroke(color(intScaledRandom(255), intScaledRandom(255), intScaledRandom(255), intScaledRandom(255)));  

  /* Mouse condition based on https://www.openprocessing.org/sketch/28053 */
  if(mouseButton == RIGHT) {
    fill(255, 255, 255, 50);
    rect(0, 0, myXSize, myYSize);
    for (Life resident : world.residents) {
      resident.die("an anthropogenic extinction event");
    }
    fill(255, 255, 255, 50);
    rect(0, 0, myXSize, myYSize);
    fill((mouseY/3 % 255), (mouseX/3 % 255), ((mouseX/3+mouseY/3) % 255), 5);
    rect(0, 0, myXSize, myYSize);
    for(Integer i=0; i<maximumCreatures; i++) {
      world.add(randomCreatureType("repopulation after extinction"));
    }
  }

  world.click();
}