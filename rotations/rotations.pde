void setup (){
  size (600, 600);
  background (255);
  smooth();
  //fill(192);
  //noStroke();
  //rect(40, 40, 40, 40);
  
  //pushMatrix();
  //translate (60, 60);
  //rectMode(CENTER);
  //rotate(radians(45));
  //fill (0);
  ////rect (40, 40, 40, 40); wrong way
  //rect (0, 0, 40, 40);
  //popMatrix ();
}

void draw(){
  //if whatever is inside the parenthesis is true then do whats in the curly brackets
  if(frameCount % 10 ==0){
    //= assigns value ==checks if something is true
    //the remainder of 10 and 2 is 0 bc there isn't any remainder left over
    //so this is counting the frame loop whenever its divisible by 10
    //frameC= 57 % 10 = nothing bc its not divisible by 10
    //%= "modulo"
    fill(random (0,255), random(0, 255), random(0, 255));
    
    pushMatrix ();
    translate(100, 100); 
    rotate(radians (frameCount*4 % 360));
    //rect(0, 0, 80, 20);
    ellipse(0, 0, 400, 100);
    popMatrix(); 
  }
}