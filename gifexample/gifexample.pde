PImage[] gif;
int numberOfFrames;
int frame;

void setup () {
  
  size(800, 800, FX2D);
 
  numberOfFrames = 20;
  gif = new PImage [numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.03s.gif");
    i++;
  }
}

void draw () {
  image(gif[frame], 0, 0, width, height);
  frame++;
  if (frame == numberOfFrames) frame = 0;
}
