//create a button interface
//use recursion and/or logic flow to create a pattern

int x; 
int y; 
int size; 
float dist; 
float xPos, yPos; 
float xVel, yVel; 
int radiusX, radiusY;
boolean buttonClicked = true;
void setup(){
 size (900, 900);
 background(255);
 x = width/2; 
  y = height/2; 
  size = 100; 
  //xVel=  random(-5, 5); 
  //yVel= random(-5, 5); 
   xVel=  random(-1, 1); 
   yVel= random(-2, 2); 

}

void draw(){
  noStroke(); 
if(buttonClicked){
    background(40); 
    fill(255, 0, 0); 
  }else{
    background(255); 
    fill(0, 255, 0); 
    
    fill(90);
  //fill based on our random color variables
  //fill(r, g, b)
  //ellipse(xPos,yPos, width/3, height/3); 
  xPos = xPos + xVel; 
  yPos = yPos + yVel; 
   }
  
   
   if(xPos > width - radiusX/2 || xPos < 0 + radiusX/2){
    xVel = xVel * -1;
    radiusY = 140; 
  }else{
    radiusY = 100; 
  }
  if (yPos > height - radiusY/2 || yPos < 0 + radiusY/2) {
    yVel = yVel * -1;
    radiusX = 140; 
    
  }else{
    radiusX = 100; 
  }
}
  
 
  
void mousePressed(){
  if(calcDistance(xPos,yPos) <= width/3){
    buttonClicked = !buttonClicked; 
    
    //random fill color variables 
    //r = random()
  } 
 }
   
   float calcDistance(float xPos, float yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
  
}