void keyPressed() {
  if (key == 'c' || key == 'C'){
    if(state == BEGINNING){
     // playSound(THEMESONG);
     //startTime = millis()/1000 + countDown;
      state = INSTRUCTIONS;
    }
  }
  if (key == 's' || key == 'S'){
    if(state == INSTRUCTIONS){
      state = GAME_MODE;
    }
  }
}
