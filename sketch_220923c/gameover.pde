PImage go;

void gameover() {
  background(0);
 
  image(go, 150, 100);
  text("highScore :",375,500);
  if (hs<score) hs=score;
  text(hs,555,500);
}

void cgameover() {
  if (mouseX<width&& mouseX>0&& mouseY<height&& mouseY>0) {
    
    mode=INTRO;
    score=0;
    tm=1000;
  }
}
