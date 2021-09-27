void intro () {
  // background
  fill(purple);
  rect(0, 0, 1000, 200);
  fill(maroon);
  rect(0, 200, 1000, 200);
  fill(red);
  rect(0, 400, 1000, 200);
  fill(orange);
  rect(0, 600, 1000, 200);
  fill(yellow);
  
  // title (color)
  fill(red);
  textFont(colormatch);
  textSize(200);
  text("Color", width/2, 270);
  
  // title (match)
  fill(maroon);
  textFont(colormatch);
  textSize(200);
  text("Match", width/2, 470);
  
  // title (click anywhere)
  fill(yellow);
  textFont(clickanywhere);
  text("Click Anywhere", width/2, 100);
  
  // title (to play)
  fill(purple);
  textFont(clickanywhere);
  text("To Play", width/2, 700);
  
  // score reset
  score = 0;
}
