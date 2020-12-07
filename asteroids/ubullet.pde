class UBullet extends GameObject {

  PVector target;

  UBullet (float x, float y) {

    location = new PVector(x, y);
    velocity = new PVector(myShip.location.x - x, myShip.location.y - y);
    velocity.setMag(5);
    size = 15;
    lives = 1;
  }

  void show() {
    stroke(255, 209, 149);
    fill (255, 209, 149);
    ellipse(location.x, location.y, size, size);
  }  

  void act() {
    super.act(); 
    if (offScreen()) lives = 0;
  }
}
