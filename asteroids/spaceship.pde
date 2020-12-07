class Spaceship extends GameObject {

  PVector direction;
  int shotTimer, threshold, time, invT, points;
  boolean inv;

  //2. constructor: name matches the class
  Spaceship() {
    location = new PVector(width/2, height/2);
    direction = new PVector(0.03, 0.03);
    velocity = new PVector(0, 0);
    inv = true;
    size = 35;
    lives = 3;
    shotTimer = 0;
    threshold = 30;
    time = 0;
    invT = 200;
    points = 0;
  }

  //3. behaviour functions 
  void show() {
    if (inv == true) {
      stroke(255);
      fill(255);
    } else if (inv == false) {
      fill(0);
      stroke(255);
      fill(0);
    }

    pushMatrix();
    strokeWeight(3);
    translate(location.x, location.y);
    rotate(direction.heading());
    triangle(-20, -10, -20, 10, 20, 0);
    popMatrix();
  }

  void act() {
    super.act();
    shotTimer++;
    time ++;
    invT --;

    if (leftkey) direction.rotate( -radians(4) );
    if (rightkey) direction.rotate( radians(4) );
    if (upkey) {
      velocity.add(direction);
      myObjects.add (new Fire());
    }
    if (downkey) velocity.sub(direction);
    if (spacekey && shotTimer > threshold) {
      myObjects.add (new Bullet());
      shotTimer = 0;
    }
    if (location.y < -50) location.y = height+50;
    if (location.y > height+50) location.y = -50; 
    if (location.x < -50) location.x = width+50;
    if (location.x > height+50) location.x = -50; 
    if (invT <=0) {
      inv = false;
      invT = 200;
    }

    int i = 0;  
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof UFO) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <=  size/2 +  obj.size && inv == false) {
          lives -= 1 ;   
          inv = true;
          invT = 200;
          velocity.x = 0;
          velocity.y = 0;
        }
      } else if (obj instanceof Asteroid) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <=  size/2 + obj.size && inv == false) {
          lives -= 1 ;   
          inv = true;
          invT = 200;
          velocity.x = 0;
          velocity.y = 0;
        }
      } else if (obj instanceof UBullet) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <=  size/2 +  obj.size && inv == false) {
          lives -= 1 ;   
          inv = true;
          invT = 200;
          velocity.x = 0;
          velocity.y = 0;
        }
      }
      i++;
    }

    if (lives == 0) {
      mode = YOULOST;
      setup();
      fill(0);
      stroke(0);
      points = 0;
    }

    if (points == 21) {
      mode = YOUWON;
      setup();
      fill(0);
      stroke(0);
      points = 0;
    }
  }
}
