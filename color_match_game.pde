// Lucas Ortiz Molina
// Wednesday, September 22nd
// color matching game. Your mind will be stretched and thrown around as you will be boggled with trying to match the word with the color. You have approximately 3 seconds to select match or no match. After then, you lose the game, as well as when you select the wrong option.

// randomize match variable
int rv;
int choice;

// game text size variables
float ts;

// gif array
PImage[] gif;
int numberOfFrames;
int frame;

// game variables
int score;
int highscore;
int addscore;

// puzzle array
String[] words;
color[] colors;
int w;
int c;

// fonts
PFont colormatch;
PFont clickanywhere;

// color palette
color purple = #651366;
color maroon = #A71A5B;
color red = #E7204E;
color orange = #F76E2A;
color yellow = #F0C505;
color white = 255;
color blue = #69D2E7;

// Mode variables ==============================
int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;

void setup () {
  size(1000, 800, FX2D);
  mode = INTRO;
  
  textAlign(CENTER, CENTER);

  // fonts
  colormatch = loadFont("Chalkduster-48.vlw");
  clickanywhere = loadFont("Cochin-Italic-48.vlw");
  
  // puzzle array
  words = new String [6];
  colors = new color [6];
  words[0] = "red";
  colors[0] = red;
  words[1] = "white";
  colors[1] = white;
  words[2] = "maroon";
  colors[2] = maroon;
  words[3] = "orange";
  colors[3] = orange;
  words[4] = "yellow";
  colors[4] = yellow;
  words[5] = "blue";
  colors[5] = blue;
  
  // game variables
  score = 0;
  addscore = 1;
  
  // gif array
  numberOfFrames = 20;
  gif = new PImage [numberOfFrames];
  
  // game text size variables
  ts = 0;
  
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("gifexample/frame_"+i+"_delay-0.03s.gif");
    i++;
   
  }
}

void draw () {
  // mode framework
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) { 
    gameover();
  } else {
    println("Error: mode = " + mode);
  }
}
