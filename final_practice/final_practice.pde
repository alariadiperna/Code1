//set up arrays for you ellipse position 
//set up booleans to detect which ellipse clicking on 
int num = 100; 

int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE]; 

int[] ePosX = new int [numE]; 
int[] ePosY = new int [numE]; 


Buttons[] button= new Buttons[4];
void setup(){
  size(900,900,P3D);
  background(255);
  stroke(0);
  
  for(int i = 0; i<numE; i++){
    ePosX[i] = int(random(0, width)); 
    ePosY[i] = int(random(0, height)); 
    
    eSpeedX[i] = int(random(-5,5));
    eSpeedY[i] = int(random(-5,5));
    
    eSize[i] = int(random(10,100));
    
    baseColor[i] = color(int(random(0,50)), int(random(150, 255)),  int(random(150, 255))); 
    if(eSpeedX[i] == 0){
      eSpeedX[i] = 1; 
    }
    if(eSpeedY[i] == 0){
      eSpeedY[i] = 1; 
    }
  }
  
}

void draw(){
  background(255);
  smooth(0);
  for(int i = 0; i< num; i++){
    for(int j = 0; j< num; j++){
      ellipse(xPos[i], 100, size, size); 
    }
  }
  for (int i = 0; i < button.length; i++) {
    button[i].display();
  }
  
  fill(0);
  ellipse(375,mouseY,40,40);
  ellipse(475,70,40,40);
  ellipse(425,60,40,40);
  ellipse(525,50,40,40);
  
 
  noFill();
  ellipse(450,450,300,300);
  
  rectMode(CENTER);
  rect(450,750,200,25);
  
  line(425,20,425,1000);
  line(475,20,475,1000);
  line(525,20,525,1000);
  line(375,20,375,1000);
  
  
}



//boolean buttonClicked = false; 
//int num = 4; 
////boolean [][] clicked = new boolean[num][num];
//int eSize[]= new int[num]; 

//int[] ePosX = new int [num]; 
//int[] ePosY = new int [num]; 
 
//,

//void setup(){
//  size(1000, 1000); 
  
//  for(int i = 0; i<num; i++){
//    //ePosX[i] = eSize[i]+325; 
//    ePosX[i] = int(325);
//    ePosY[i] = 400; 
    
  
    
//    eSize[i] = 50;
    
   
//  }
//}

//void draw(){
//  background(255); 
  
//  noFill();
//  ellipse(450,450,300,300);
  
//  rectMode(CENTER);
//  rect(450,750,200,25);
  
//  line(425,20,425,1000);
//  line(475,20,475,1000);
//  line(525,20,525,1000);
//  line(375,20,375,1000);
  
//  //draw ellipse later 
//  for(int i =0; i<num; i++){
//    fill(0); 
    
//    ellipse(ePosX[i], ePosY[i]+25, eSize[i], eSize[i]);
//  }
//}

//boolean clickingButton(int xPos,int yPos, int w, int h){
//  if(mouseX>= xPos-w/2 && mouseX <= xPos+w/2 && mouseY>= yPos-h/2 && mouseY<=yPos+h/2){
//    return true; 
//  }else{
//    return false; 
//  }
//}

//void mousePressed(){
//  for(int i = 0; i<num; i++){
//    if(dist(ePosX[i], ePosY[i], mouseX, mouseY)<eSize[i]/2){
     
//    }
//  }
//}