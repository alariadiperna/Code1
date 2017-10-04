int w;
int h;
float myFloat;
String myString;

void setup (){
  myString= "Hello Console";
  //println(myString);
  // how to run text in your script without it interpreting it as code (put "")
  //needs semicolon to run
  w=100;
  h=200;
  size (500,500);
  background (11, 110, 80);
  noStroke();
  frameRate(5);
  textSize(24);
}
void draw(){
  //println ("Hello Console");
  //draws will make things run in a loop (can set limitations but will run indefinitely if you do nothing)
  //println ("Hi back");
  rectMode (CENTER);
  fill (random (0, 255), random(0,255));
  rect (width*.25, height*.25, 100, 100);
  fill (0, 200, 200);
  ellipse (width*.25, height*.25, 50, 50);
  text(myString, width/2, height/2);
  //or you can divide the dimensions by 2 (500/2, 500/2, 50, 50)
  noStroke ();
  fill(random (0, 255));
  quad(38, 31, 86, 20, 69, 63, 30, 76);
   
}