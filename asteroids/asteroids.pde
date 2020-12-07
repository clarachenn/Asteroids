Spaceship myShip;

ArrayList<GameObject> myObjects;
boolean leftkey, rightkey, upkey, downkey, spacekey, mkey;
PFont font;
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int YOULOST = 3;
final int YOUWON =4;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  myShip = new Spaceship(); 
  upkey = false; 
  leftkey = false; 
  downkey = false; 
  rightkey = false;
  spacekey = false;
  mkey = false;
  myObjects = new ArrayList<GameObject>();
  myObjects.add(new Asteroid ());
  myObjects.add(new Asteroid ());
  myObjects.add(new Asteroid ());
  myObjects.add(new UFO());
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == YOULOST) {
    youlost();
  } else if (mode == YOUWON) {
    youwon();
  } else {
    println("Error: Mode = " + mode);
  }
}
