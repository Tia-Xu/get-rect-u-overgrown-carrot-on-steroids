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
        score=score+1;
        ss.play();
        ss.rewind();
        rnm=(int) random(0, 6);
        rc=(int) random(0, 6);
        eq=(float) random(0, 1);
        tm=1000;
        if (eq>0.5) {
          rnm=rc;
        } else {
          if (eq<=0.5) {
            rnm=rc+1;
          }
       
      }
    }
  } else if (rnm!=rc) {
    if (trect(600, 300, 400, 600)) {
      score=score+1;
      ss.play();
      ss.rewind();
      rnm=(int) random(0, 6);
      rc=(int) random(0, 6);
      eq=(float) random(0, 1);
      tm=1000;

      if (eq>0.5) {
        rnm=rc;
      } else {
        if (eq<=0.5) {
          rnm=rc+1;
        }
      }
    }

    if (trect(200, 300, 400, 600)) {
      sf.play();
      sf.rewind();
      mode=GAMEOVER;
    }
  }
}
}
