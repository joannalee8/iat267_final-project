//imports
import ddf.minim.*;

Enemy bossBoo;
Background bbg;
Background instructions;
Background gameBG;

//game stages
final int BEGINNING = 0;
final int INSTRUCTIONS = 1;
final int GAME_MODE = 2;

//outcomes
final int WON = 4;
final int LOST = 5;

//health 
 float healthPercentage = 1;

Minim minim = new Minim(this);

//initialize beginning state
int state = BEGINNING;

void setup(){
  size(500, 500);
  
  bossBoo = new Enemy(new PVector(width/2, height/2), new PVector(5, 0));
  
  //images
  PImage boss_boo = loadImage("boo.png");
  PImage beginningScreen = loadImage("beginning.png");
  PImage instructionScreen = loadImage("instructions.png");
  PImage game_bg = loadImage("game_bg.png");
  
  bbg = new Background(beginningScreen);
  instructions = new Background(instructionScreen);
  gameBG = new Background(game_bg);
}

void draw(){
  switch(state){
    case BEGINNING:
    beginning();
    break;
    case INSTRUCTIONS:
    instructions();
    break;
    case GAME_MODE:
    gameBackground();
    gamePlay();
    break;
  }
}

//game plays 
void beginning(){
  bbg.update();
}

void instructions(){
  instructions.update();
}

void gameBackground(){
  gameBG.update();
}

void gamePlay(){
  drawHealthBar();
  bossBoo.drawCharacter();
}

void drawHealthBar(){
  int healthBarWidth = 100; 
  pushMatrix(); 
  fill(0, 50);
  translate(20, 20); 
  rect(0, 0, healthBarWidth, 20);
  fill(255, 0, 0, 70);
  rect(0, 0, healthBarWidth * healthPercentage, 20); 
  popMatrix();
}
