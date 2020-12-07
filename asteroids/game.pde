void game() {

  background(0);
  if (mode == GAME) {
    fill(255);
    textSize(30);
    text("pause", 700, 30);
  } else {
    fill(0);
  }

  myShip.show();
  myShip.act();

  println(myObjects.size());

  int i = 0; //starting at object zero
  while (i < myObjects.size()) {
    //processing each bullet individually
    GameObject obj = myObjects.get(i); //get the current object 
    if (obj.lives > 0) {
      obj.show(); //tell the current object to draw itself
      obj.act(); //tell the current object to update itself 
      i++; //go to the next object
    } else { 
      myObjects.remove(i); //throw away object
    }
  }
}

void gameClicks() {

  if (mouseX > 700 && mouseX < 786 && mouseY > 14 && mouseY < 36) {
    mode = PAUSE;
  }
}

void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ') spacekey = true;
  if (key == 'm') mkey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ') spacekey = false;
  if (key == 'm') mkey = false;
}
