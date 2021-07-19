class Background{
  PImage img; 
  
  Background(PImage img){
    this.img = img;  
  }
  
  void update(){
    loadBackground();
  }
  
  void loadBackground(){
    image(img, 0, 0, 500, 500);
    img.resize(500, 500);
  }
}
