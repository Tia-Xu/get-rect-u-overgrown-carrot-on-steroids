int rnm;
int rc;
String word;



void game() {


  background(255);
  fill(0);
  rect(0, 0, 800, 1250);
  textFont(play);
  fill(255);
  text("match", 200, 200);
  fill(0);
  text("don't match", 600, 200);
  //frameRate(1);

 


  fill(colors[rc]);
  text(words[rnm], width/2, height/2);

  fill(50);
  tactile(750, 50, 60, 55);
  stroke(0);
  strokeWeight(3);
  fill(255);
  triangle(735, 30, 735, 70, 770, 50);
  text("score :", 100, 75);
  text(score, 225, 75);
  rect(250, 35, tm/10, 30);
  text("TIME", 100, 30);
  tm=tm-10;
  if (tm==0) {
    mode=GAMEOVER;
  }
}

















void  cgame() {

  if (trect(750, 50, 60, 55)) {
    mode=PAUSE;
  } else {

    if (rnm == rc) {
      if (trect(200, 300, 400, 600)) {
       correct();
      }
      if (trect(600, 300, 400, 600)) {
      fail();
      }
    
    
  }else if (rnm!=rc) {
    if (trect(600, 300, 400, 600)) {
     correct();

     
    }

    if (trect(200, 300, 400, 600)) {
      fail();
    }
  }
}
}
