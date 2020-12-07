void pause() {

  fill(0);
  stroke(0);
  rect(700, 10, 200, 60);

  fill(255);
  textSize(40);
  text("tap to continue", 250, 690);

  fill(255);
  textSize(100);
  text("paused", 220, 400);
}

void pauseClicks() {
  mode = GAME;
}
