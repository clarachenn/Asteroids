class GameObject {

  float vx, vy;
  PVector location;
  PVector velocity;
  int size;
  int lives;

  GameObject() {
    vx = vy = 0;
  }

  void show() {
    strokeWeight(3);
    stroke(255);
    fill(0); 
    rect(location.x, location.y, size, size);
  }

  void act() {
    location.add(velocity);
  }

  boolean offScreen() {
    if (location.x < 0 || location.x > width || location.y < 0 || location.y > height) {
      return true;
    } else
      return false;
  }
}
