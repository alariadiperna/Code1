class Ellipse{
  //data
  PVector position;
  PVector translate;
  int size; 
  
  //constuctor
  Ellipse(int _xPos, int _yPos){
    position = new PVector(0,0);
    translate =  new PVector(_xPos, _yPos);
    size = 15; 
  }
  
  void display(color c){
    fill(c);
    ellipse(position.x,position.y,size,size);
  }
  
  void orbit(int orbitDirection){
    position.x = cos(frameCount*.1)*size+translate.x;
    position.y = sin(frameCount*.1)*size+translate.y;
  }  
}