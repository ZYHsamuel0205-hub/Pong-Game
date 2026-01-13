//mode framework
int mode;
final int INTRO = 0; //final means the value is locked
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entitiy variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld, vxball, vyball; //ball

  //scoring 
  int leftscore, rightscore, timer;
  
//keyboard variables
boolean wkey, skey, upkey, downkey;
void setup () {
  size (800, 600);
  mode = INTRO;
  
  //initalize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty =  height/2; 
  rightd = 200;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  vxball = random (-9, 9);
  vyball = random (-9, 9);
  
  //initialize keyboard vars
  wkey = skey = upkey = downkey = false;
  //initialize score
  rightscore = leftscore = 0;
  timer = 100;
}

void draw () {
  if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause ();
  } else if (mode ==GAMEOVER) {
    gameover ();
  } else { // to end the "else if"
    println ("Error: Mode = " + mode);
  }
}
