int x; 
int y; 
int size; 
float dist; 
boolean buttonClicked; 
void setup(){
  size(900, 900); 
  x = width/3; 
  y = height/3; 
  size = 200; 
}

void draw(){
    
  if(buttonClicked){
    frameRate(9);
    background(random(0,255),random(0,255),random(0,255)); 
    fill(0); 
  }else{
    background(255); 
    fill(0, 0, 200); 
  }
  
  ellipse(mouseX, mouseY, size, size);  
  
  println(calcDistance(x, y)); 
}

void mousePressed(){
  if(calcDistance(mouseX,mouseY) <= 50){
    buttonClicked = !buttonClicked; 
  }
  
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}