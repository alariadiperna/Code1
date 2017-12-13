boolean buttonClicked;
boolean sqButtonClicked;
int size;
int x;
int y;
int x2;
int y2;
float dist;
float startAngle = 1;
float startAngle2= 5;
//angles that the square oscillation start at
float angleVel = 0.1;
//velocity for the square oscillation

import processing.sound.*;
Pulse pulse;
//calls the built in pulse class
//a "public class"

void setup(){
  size(900,800);
  background(255);
  stroke(0);
  x = 450;
  y = 30;
  size = 25;
  x2 = 300;
  y2 = 100;
  
   pulse = new Pulse(this);
   //creates the new oscillator (which is technically part of the sine oscillation)
   
   pulse.play();
   //starts the sound
}

void draw(){
  background(255); 
  noFill();
  ellipse(450,550,250,250);
  
  rectMode(CENTER);
  rect(x,750,size+175,size);
  //little rectangular thing on the instrument
  
  line(425,20,425,1000);
  line(475,20,475,1000);
  line(525,20,525,1000);
  line(375,20,375,1000);
  //"strings"
 
  if(buttonClicked){
    frameRate(25);
    fill(random(0,250),random(0,250),random(0,250)); 
    rect(x,mouseY,size+175,size);
    //the capo
    
    pulse.freq(map(mouseX, 0, width, 20.0, 500.0));
    //the frequency of the oscillator
    pulse.pan(map(mouseX, 0, width, -3.0, 1.0));
    //"stereo panorama" 
    pulse.amp(map(mouseY, 0, height, 1, 0.5));
    //the amplitude
    pulse.width(map(mouseY, 0, height, 0.6, 1.0));
    //pulse "width" of the oscillator
    
    float angle = startAngle += 0.02;
    float angle2 = startAngle2 += 0.05;
    for (int x = 0; x <= width; x += 24) {
    float y = map(sin(angle),-4,4,2,height);
    stroke(0);
    fill(random(0,250),random(0,250),random(0,250));
    rect(x,y,48,48);
    angle += angleVel;
    //oscillation in a "wave" pattern
    }
    
    for (int x = 0; x <= width; x += 24) {
      translate(100, 100); 
    float y = map(sin(angle2),-4,4,2,width/2);
    stroke(0);
    fill(random(0,250),random(0,250),random(0,250));
    rect(x,y,48,48);
    angle2 += angleVel;
    //bouncy square oscillation
  
    }  
  }else{ 
  fill(0); 
  rect(x,y,size+175,size);

  }
  
   if(sqButtonClicked){
    
     pulse.stop();
     //shut the sound off
  }else{
    
    fill(200,20,10);
    rect(x2,y2,size,size);
    
}
}
void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
    //boolean setup
  }
  if(calcDistance(x2,y2) <= 50){
    sqButtonClicked = !sqButtonClicked; 
  }
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}

//sources: http://natureofcode.com/book/chapter-3-oscillation/
//PulseWidth example
//https://github.com/processing/processing-sound/blob/master/src/processing/sound/Pulse.java
//http://www.madlab.org/kits/guitar.html