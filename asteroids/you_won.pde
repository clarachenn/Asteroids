void youwon() {
  background(255);
  fill(0);
  textSize(40);
  text("tap to play again", 245, 690);

  fill(139, 255, 129);
  textSize(100);
  text("victory", 243, 403);

  fill(0);
  textSize(100);
  text("victory", 240, 400);
}

void youwonClicks() {
  mode = INTRO;
}
