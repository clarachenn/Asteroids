class Asteroid extends GameObject {
  
  int points;

  Asteroid() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(1, 0); 
    velocity.rotate(random(TWO_PI));
    size = 70;
    lives = 1;
    points = 0;
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate(random(0, TWO_PI));
    size = s;
  }

  void show() {
    stroke(139, 255, 129);
    fill(139, 255, 129);
    rect(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    if (location.x < 0)location.x = width;
    if (location.x > width) location.x = 0;
    if (location.y < 0) location.y = height;
    if (location.y > height) location.y = 0;

    int i = 0;
    while (i < myObjects.size()) {
      GameObject obj = myObjects.get(i);
      if (obj instanceof Bullet && mode ==GAME) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size && size >= 35) {
          myShip.points += 1;
          obj.lives = 0;
          lives = 0;
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          myObjects.add(new Asteroid(size/2, location.x, location.y));
        } 
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size && size < 35) {
          myShip.points += 1;
          obj.lives = 0;
          lives = 0;
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));          
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));
        }
      } 

      if (obj instanceof UBullet && mode == GAME) {
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size && size >= 35) {
          myShip.points += 1;
          obj.lives = 0;
          lives = 0;
          myObjects.add(new Asteroid(size/2, location.x, location.y));
          myObjects.add(new Asteroid(size/2, location.x, location.y));
        } 
        if (dist(location.x, location.y, obj.location.x, obj.location.y) <= size/2 + obj.size && size < 35) {
          myShip.points += 1;
          obj.lives = 0;
          lives = 0;
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));          
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));
          myObjects.add(new Explode(location.x, location.y));
        }
      } 

      if (mode == YOUWON) {
        setup();
        stroke(0);
      }

      if (mode == YOULOST) {
        setup();
        stroke(0);
      }
      i++;
    }
  }
}
