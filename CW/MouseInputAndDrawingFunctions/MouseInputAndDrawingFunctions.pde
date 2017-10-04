color c; 
int xPos, yPos;
int xVel;

void setup(){
  size(1000,1000);
  smooth();
  background(255);
  xVel = 10;
}

void draw(){
 //if mousePressed(){
 //xPos += xVel;
 //  // c= color(random(255), random(255), random(255));
 // //int s= int(random(20, 200));
  
 // //drawShip(c, mouseX, mouseY, s);
 //}
 
}

void mousePressed(){
  c= color(random(255), random(255), random(255));
  int s= int(random(20, 200));
  
  drawShip(c, mouseX, mouseY, s);
}

void drawShip(color col, int x, int y, int size){
  noStroke();
  fill(col);
  ellipse(x, y, size*2.7, size);
  ellipse(x, y-(size/2), size, size*.8);
  
}