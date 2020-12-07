class Explode extends GameObject {

  float size;
  int t;

  Explode() {
    location = myShip.location.copy();
    velocity = myShip.direction.copy();
    velocity.rotate(random(TWO_PI));
    velocity.setMag(0.4);
    size = 10;
    lives = 1;
    t =255;
  }

  Explode(float x, float y) {
    location = new PVector (x, y);
    velocity = new PVector(1, 0); 
    velocity.rotate(random(TWO_PI));
    velocity.setMag(0.4);
    size = 10;
    lives = 1;
    t =255;
  }

  void show() {
    strokeWeight(3);
    stroke(139, 255, 129, t);
    fill(0, t); 
    t = t - 3;
    rect(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
