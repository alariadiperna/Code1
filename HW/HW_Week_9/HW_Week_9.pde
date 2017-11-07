void setup() {
  size(600,600);
}
 
void draw() {
  background(255);
 
  float dot = 120;
  float amplitude = 100;
  float x = amplitude * cos(TWO_PI * frameCount / dot);
  stroke(0);
  frameRate(30);
  fill(random(0,255), random(0,255), random(0,255));
  translate(width/2,height/2);
  rotate(50);
  line(5,5,x,5);
  ellipse(x,5,20,20);
  rotate(80);
  line(5,5,x,5);
  ellipse(x,5,20,20);
}