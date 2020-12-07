class UFO extends GameObject {

  PVector direction;
  int timer, stopTimer, timer2, timer3, c;

  UFO() {
    c=(int)random(1, 4);
    if (c==1) {
      location = new PVector(random(800), -50);
    } else if (c==2) {
      location = new PVector(850, random(800));
    } else if (c==3) {    
      location = new PVector(random(800), 850);
    } else if (c==4) {
      location = new PVector(-50, random(800));
    }

    velocity = new PVector(random(1, 2), random(1, 2));
    direction = new PVector (myShip.location.x - location.x, myShip.location.y - location.y);
    direction.setMag(5);
    velocity.rotate(random(TWO_PI));
    size = 50;
    lives = 1;
    timer = 0;
    stopTimer = 150;
    timer2 = 0;
  }

  void show() {
    stroke(255, 209, 149);
    fill (255, 209, 149);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    timer++;
    timer2++;

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size) {
          lives = 0;
          obj.lives = 0;
          timer2 = 0;
          timer2++;
          myObjects.add(new UFO());
        }
      }     
      if ( lives>0 && timer>stopTimer) {
        myObjects.add (new UBullet( location.x, location.y));
        timer = 0;
      }

      if ( lives>0 && timer2 >= random(1000, 1500)) {
        myObjects.add(new UFO());
        lives = 0;
        timer2 = 0;
      }
      i++;
    }
    if (mode == YOULOST) {

      stroke(0);
      fill (0);
    }
    if (mode == YOUWON) {
      stroke(0);
      fill (0);
    }
  }
}
