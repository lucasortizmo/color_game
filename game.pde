void game () {
  // background
  fill(purple);
  rect(0, 0, 500, 800);
  fill(0);
  rect(500, 0, 500, 800);
  
  // score
  fill(red);
  textSize(50);
  text("Score: " + score, width/2, 100);
  
  // button options
  fill(yellow);
  textSize(50);
  text("Match", 200, 150);
  text("No Match", 700, 150);
  
  // puzzle
  fill(colors[c]);
  textSize(50 + ts);
  text(words[w], 500, 400);
 
  // game text size variables
  ts = ts + 1;
  if (ts > 100) mode = GAMEOVER;
  
  println(choice, w, c);

}
