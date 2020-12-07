void intro() {
  background(0);

  fill(255);
  textSize(80);
  text("start", 300, 690);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(20, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(70, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(120, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(170, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(220, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(270, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(320, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(370, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(420, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(470, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(520, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(570, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(620, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(670, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(720, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(770, 20, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  rect(820, 70, 50, 50);

  stroke (139, 255, 129);
  fill(139, 255, 129);
  textSize(100);
  text("asteroids", 178, 403);

  fill(255);
  textSize(100);
  text("asteroids", 175, 400);

  fill (255, 209, 149);
  stroke (255, 209, 149);
  ellipse(447, 375, 60, 60);
}

void introClicks() {
  if (mouseX > 305 && mouseX < 475 && mouseY > 639 && mouseY < 691) {
    mode = GAME;
  } else {
  }
}
