void game () {
  //if you want to make a bot, just like how creeper in Minecraft work
  // also need an AI boolean
  
  //if the ball is on the rightside {
  //if ball is above the right paddle, move up
  //if ball is below the right paddle, move down
  //}
  
  
  background (#65B45B);

  //centerline
  strokeWeight (5);
  stroke (255);
  line (width/2, 0, width/2, height);

  //scoreboard
  textSize (50);
  fill (255);
  text (leftscore, width/4, 100);
  fill (255);
  text (rightscore, 3*width/4, 100);
  //text (timer,  3*width/4, 550);
  timer--;

  // draw paddles
    fill (#FF0A0E);
  circle (leftx, lefty, leftd);
  fill (#0D0AFF);
  circle (rightx, righty, rightd);

  if (lefty < leftd/2 ) lefty = 100;
  if (lefty > height - leftd/2 ) lefty = height - 100;
  if (righty < rightd/2 ) righty = 100;
  if (righty > height - rightd/2 ) righty = height - 100;


  //move paddles
  if (wkey == true) lefty = lefty - 7;
  if (skey == true) lefty = lefty + 7;
  if (upkey == true) righty = righty - 7;
  if (downkey == true) righty = righty + 7;

  // draw balls
  fill (#FF890A);
  noStroke ();
  circle (ballx, bally, balld);
  if (timer < 0) {//when timer reach -ve, ball will move
    ballx = ballx + vxball;
    bally = bally + vyball;
  }

  //scoring
  if (ballx < 0) {
    rightscore++; //short for "righscore = rightscore +1"
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  if (ballx > width) {
    leftscore++; //short for "righscore = rightscore +1"
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  //bouce off paddle
  if (dist(leftx, lefty, ballx, bally) < leftd/2 + balld/2) {
    vxball = (ballx - leftx)/10;
    vyball = (bally - lefty)/10;
  }

  if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
    vxball = (ballx - rightx)/10;
    vyball = (bally - righty)/10;
  }

  //bounce off side wall
  if (bally < balld/2 || bally > height - balld/2) {
    vyball = vyball * -1;
  }

  if (leftscore > 2)  mode = GAMEOVER;
  if (rightscore > 2)  mode = GAMEOVER;
}


void gameClicks () {
}
