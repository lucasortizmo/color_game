void gameover () {
  // gif
  image(gif[frame], 0, 0, width, height);
  frame++;
  if (frame == numberOfFrames) frame = 0;
  
  // score
  textSize(100);
  fill(red);
  text("Highscore: " + highscore, width/2, 650);
  text("Score: " + score, width/2, 200);
  
  // highscore
  if (score > highscore) highscore = score; 
  
  // reset text size
  ts = 0;
}
