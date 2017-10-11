//create two buttons
int x1; 
int y1; 
int x2; 
int y2;
int size; 
float dist; 
boolean buttonClicked; 
boolean buttonClicked2 = false; 
void setup(){
  size(900, 900); 
  x1 = width/3; 
  y1 = height/3; 
  x2= width/6;
  y2 = height/6;
 
  size = 200; 
}

void draw(){
  background(255);
  if(buttonClicked){
    noStroke();
    frameRate(2);
    fill(random(0, 255),random(0, 255),random(0, 255)); 
    rectMode(CENTER);
    rect(x1, y1, size, size);
    
    //map size to mouse 
  }else{
    noStroke();
    fill(200, 0, 0); 
    ellipse(x1, y1, size, size);
  }
  
  if(buttonClicked2){
   
  if(mouseX<width/2){
    x2 = width/2; 
    y2 = height/2;
  }else{
    x2 = width/4;
    y2 = height/4; 
  }
  }
    
   
  
  fill(0);
   
  ellipse(x2, y2, size, size); 
}

void mousePressed(){
  //need to calculate distance between mouse and your button 
  //button needs to be drawn based on your x and y variables 
  
  //Have tried to do this using different variables, will not work
  if(calcDistance(x1, y1) <= size){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(x2, y2) <= size){
    buttonClicked2 = !buttonClicked2; 
  }
  //only have one boolean 
  //need to have two booleans 
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}