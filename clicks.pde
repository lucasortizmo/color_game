void introClicks () {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) mode = GAME;
}

void gameoverClicks () {
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) mode = INTRO;
}

void gameClicks () {
  if (mouseX <= width/2 && w == c) {
   w = int(random(0, 6));
   choice = int (random(2));
   if(choice == 0) { // word and color match
   c = w; 
   } else if (choice == 1) { // word and color mismatch
   while (c == w) { // forcing mismatch
   c = int(random(0, 6));
   }
   }
   score = score + addscore;
   ts = 0;
  } else if (mouseX <= width/2 && w != c) {
   w = int(random(0, 6));
   choice = int (random(2));
   if(choice == 0) { // word and color match
   c = w; 
   } else if (choice == 1) { // word and color mismatch
   while (c == w) { // forcing mismatch
   c = int(random(0, 6));
   }
   }
   mode = GAMEOVER;
   ts = 0;
  } else if (mouseX >= width/2 && w != c) {
   w = int(random(0, 6));
   choice = int (random(2));
   if(choice == 0) { // word and color match
   c = w; 
   } else if (choice == 1) { // word and color mismatch
   while (c == w) { // forcing mismatch
   c = int(random(0, 6));
   }
   }
   score = score + addscore;
   ts = 0;
  } else if (mouseX >= width/2 && w == c) {
   w = int(random(0, 5));
   choice = int (random(2));
   if(choice == 0) { // word and color match
   c = w; 
   } else if (choice == 1) { // word and color mismatch
   while (c == w) { // forcing mismatch
   c = int(random(0, 6));
   }
   }
   mode = GAMEOVER;
   ts = 0;
  }
}
