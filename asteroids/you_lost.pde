void youlost() {

  background(255, 209, 149);
  fill(0);
  textSize(40);
  text("tap to play again", 245, 690);

  fill(139, 255, 129);
  textSize(100);
  text("defeated", 193, 403);

  fill(0);
  textSize(100);
  text("defeated", 190, 400);
}

void youlostClicks() {
  mode = INTRO;
}
