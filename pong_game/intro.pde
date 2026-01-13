void intro () {
 background (255);

  strokeWeight (1);
  fill (0);
  textSize (72);
  text ("PONG GAME", 180, height/2);

  fill (255);
  rect (300, 350, 200, 100);


}

void introClicks () {
if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 450)
    mode = GAME;
}
