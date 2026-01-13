void gameover () {
  if (leftscore > rightscore) {
    background (#FF0A0E);
    fill (255);
    textSize (100);
    text ("Red Wins!!", 200, height/2);
  } else if (rightscore > leftscore) {
    background (#0D0AFF);
       fill (255);
       textSize (100);
    text ("Blue Wins!!", 200, height/2);
  }
}

void gameoverClicks () {
}
