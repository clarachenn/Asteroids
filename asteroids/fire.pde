class Fire extends GameObject {

  int t;

  Fire() {
    location = myShip.location.copy();
    velocity = myShip.direction.copy();
    velocity.rotate(radians(180) + random(-0.1, 0.1));
    velocity.setMag(5);
    size = 1;
    lives = 1;
    t= 255;
  }

  void show() {
    strokeWeight(3);
    stroke(255, t);
    fill(0, t); 
    t = t - 5;
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
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
