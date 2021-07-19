class Enemy {
  PVector pos;
  PVector vel; 
  float health; 
  float characterWidth, characterHeight;
  float damp = 0.8;
  PVector dim;
  PImage img;
  
  Enemy(PVector pos, PVector vel, PImage img){
    this.pos = pos; 
    this.vel = vel;
    this.img = img;
    dim = new PVector();
  }
  
  void update(){
    moveCharacter();
    checkWalls();
    vel.mult(damp); 
    drawCharacter();
    
  }
  
  void moveCharacter(){
    pos.add(vel);
  }
  
  void accelerate(PVector acc) {
    pos.add(acc); 
  }

  
  void drawCharacter(){
    pushMatrix();
    translate(pos.x, pos.y);
    image (img, -img.width/2, -img.height/2); 
    popMatrix();
  }
  
  void checkWalls(){
    if (pos.x > width) pos.x = 0;
    if (pos.x < 0) pos.x = width;
    if (pos.y > height) pos.y = 0;
    if (pos.y < 0) pos.y = height;
  }
  
 // boolean hitCharacter(Character c){
   // return dist(pos.x, pos.y, c.pos.x, c.pos.y) < dim.x/2 + c.dim.y/2; 
  }
 
 void decreaseHealth(int damage){
   health -= damage;
 }
}
