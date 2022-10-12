import processing.javafx.*;

PImage [] giffy;
int numberOfFrames;
int f;
float a;
PFont help;
PFont play;

void intro() {

  background(#006d77);
 
 



  image(giffy[f], 0, 0, width, height);
 // f=f+1;
 
  //modulus
  if (frameCount % 3==0) f=f+1;
  if (f==numberOfFrames) f=0;

  tactile(700, 500, 150, 75);


  fill(#83c5be);
  
  textFont(play);
  text("play", 700, 495);
  t(400, 300);
  a=a+0.1;
}


void t(int x, int y) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  help=createFont("Ghosties-Regular.ttf", 75);
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(#edf6f9);
  textFont(help);
  text("color theory ", 0, 0);
  popMatrix();
}

boolean trect (int x, int y, int w, int h) {
  if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2) {
    return true;
  } else {
    return false;
  }
}

void tactile(int x, int y, int w, int h) {
  if (trect(x, y, w, h)) {
    stroke(255);
  } else {
    stroke(0);
  }
//  strokeWeight(3);
  rect( x, y, w, h);
}

void cintro() {
  if (trect(700, 500, 150, 75)) {
    mode=GAME;
  }
}
