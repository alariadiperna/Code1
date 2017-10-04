

void setup(){
  size(900, 700);
  background(100);
 
  
  fill(255,224,189);
  noStroke();
  ellipse(450, 400, 400, 500);
  
  fill(255,224,189);
  noStroke();
  rect(398, 600, 100, 100);
  
  fill(0);
  noStroke();
  rect(320,290,90,10);
  
  fill(0);
  noStroke();
  rect(495,290,90,10);
  
  fill(0);
  noStroke();
  rect(390,550,120,10);
  
  fill(0);
  noStroke();
  rect(440,450,20,11);
  
  fill(0);
  noStroke();
  rect(300,150,300,50);
  
  fill(0);
  noStroke();
  rect(345,60,200,90);
}

void draw(){

  if(mousePressed){
  fill(255);
  ellipse(mouseX,mouseY,90,40);
  fill(0);
  ellipse(mouseX,mouseY,width/30,height/30);
  }
}