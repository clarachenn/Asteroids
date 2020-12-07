class Bullet extends GameObject {

  int timer;

  Bullet() {
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);    
    velocity.setMag(7);
    size = 5;
    lives = 1;
    timer = 60;
  }

  void show() {
    strokeWeight(3);
    stroke(255);
    fill(255);
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
    timer -- ;
    if (timer == 0) {
      lives = 0;
    }
  }
}
