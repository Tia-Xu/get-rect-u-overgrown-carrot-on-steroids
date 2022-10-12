void mouseReleased() {
  if (mode==INTRO) {
    cintro();
  } else if (mode==GAME) {
    cgame();
  } else if (mode==PAUSE) {
    cpause();
  } else if (mode==GAMEOVER) {
    cgameover();
  }
}
void keyReleased() {
  if (mode==GAME) {
    if (key=='a'||key=='A') {

      if (rnm == rc) {
        correct();
      }else if (rnm!=rc) {
            fail();
          }
        
      
    }


    if (key=='d'||key=='D') {
      if (rnm!=rc) {
       correct();

   
      }else {
            if (rnm==rc) {
              fail();
            }
          }
        
      
    }
  }
}
