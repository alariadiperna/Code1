PVector position;
int r= 0;

void setup(){
  size(500,500);
  background(0); 
  position = new PVector(0,0);
  
}

void draw(){
  //background(0); 
  //position.x = r*cos(frameCount*.1) +width/2;
  position.x += 1;
  position.y = r*sin(frameCount*.1) +height/2;
  
  ellipse(position.x,position.y, 10, 10);
  r += 1; 
  if (position.x>width){
    background(0);
    r=0;
  }
}