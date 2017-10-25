int s = 20;
int a;
int b; 
int a2, b2;
int a3, b3;
int a4, b4;
int a5, b5; 
boolean buttonClicked;
boolean buttonClicked2;
boolean buttonClicked3;
boolean buttonClicked4;
boolean buttonClicked5;
float dist;
int size;
PImage imgmytrueform;
PImage imgplayingnice;
PImage imghand;
int c=2;
int d=2;
float hand;

//arrays kept getting messed up so I reverted it back to the long form

void setup(){
  size(800, 800);
  noStroke();
  a = 175; 
  b = 250; 
  a2 = 400;
  b2 = 380;
  a3 = 200;
  b3 = 680;
  a4= 600;
  b4= 680;
  a5 = 80; 
  b5 = 680;
  size = 100; 
  
  fill(0);
  smooth();
  
  imgmytrueform = loadImage("yaboilucifer.png");
  imgplayingnice = loadImage("yaboiangel.png");
  imghand = loadImage("bye.jpg");
  

}
void draw(){
//did push/pop matrixes because it would rotate my buttonClicked2 without them
    
    if(buttonClicked){
      pushMatrix();
      background(255); 
    fill(200,20,10); 
    ellipse(a2, b2, size/2, size/2);
    textSize(30);
    text("Oh you just had to push it...", width/4, 600);
     
     if(frameCount % 170 ==0){
       background(255);
}
  fill(200,20,10);
    translate(width/2,height/2);
  rotate(map(millis() % 20000,12,20000,12,TWO_PI));
  beginShape();
  for (float c = 0; c < s *TWO_PI; c+=PI/360.0 ) {
    float x = 7 * c * cos(c);
    float y = 4 * c * sin(c);
    ellipse(x,y,4,2);
}
  endShape();
      popMatrix();
      
  }else{
    pushMatrix();
    background(255); 
    fill(200,20,10); 
        textSize(40);
  text("Do not push", width/3, 300);
    ellipse(a, b, size, size); 
    
    //make sure to look closely for this button
    fill(245);  
    textSize(20);
  text("You can push me", width/6, 700);
    ellipse(a5, b5, size/2, size/2);
 
  popMatrix();
   if(buttonClicked5){
     pushMatrix();
     background(255);
     fill(200,20,10);
    textSize(20);
   text("Okay cool you can go home now.", width/5,300); 
   
   frameRate(15);
   translate(c/2,d/2);
   hand+=5;
   d+=8;
   scale(1.5); 
  rotate(radians(hand)); 
  image(imghand, c, d, size*4, size*4);
  while (c >= width/2) {
    c = 0;
    d += 20;
  }
  while(d >= height/2){
    background(255); 
    d = 0; 
  }
 popMatrix(); 
 }
  }
  
  if(buttonClicked2){
    pushMatrix();
    background(200,20,10);
    fill(255);
    ellipse(a3, b3, size/2, size/2);
    ellipse(a4, b4, size/2, size/2);
    textSize(20);
   
  text("You're now dead.", width/5,300);
  text("Along with everyone else.", width/5,325);
  text("You're in a waiting room with the rest of humanity.", width/5,350);
  text("They all turn to look at you. They know what you've done.", width/5,375);
  text("You begin to back away as they advance upon you.", width/5,400);
  textSize(15);
  text("Proclaim that it isn't your fault", width/8,600);
  text("You didn't know what would happen.", width/8, 625);
  text("Beg forgiveness. The warning was there.", width/2,600);
  popMatrix();
     }
  
  if(buttonClicked3){
    pushMatrix();
    background(255);
    image(imgmytrueform, a, b, size*4, size*4);
    textSize(25);
    fill(200,20,10);
    text("Oh hey there sweet cheeks.",width/3,200);
    text("Nice of you to join me.", width/3,700);
    popMatrix();
      }
 
if(buttonClicked4){
 background(255);
 textSize(25);
 image(imgplayingnice, a, b, size*4, size*4);
 fill(0);
 text("Thank you for pressing our button!",width/4,200);
 text("This is your... eternal reward...", width/4,700);
 }
 
}
 

void mousePressed(){
  if(calcDistance(a,b) <= size/2){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(a2,b2) <= size/4){
    buttonClicked2 = !buttonClicked2; 
  }
  if(calcDistance(a3,b3) <= size/4){
    buttonClicked3 = !buttonClicked3; 
  }
  if(calcDistance(a4,b4) <= size/4){
    buttonClicked4 = !buttonClicked4; 
  }
  if(calcDistance(a5,b5) <= size/4){
    buttonClicked5 = !buttonClicked5; 
  }
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
     
    }



//the images used are not my own
//source: http://www.how-to-draw-funny-cartoons.com/angel-cartoon.html
//source: http://www.how-to-draw-funny-cartoons.com/devil-cartoon.html