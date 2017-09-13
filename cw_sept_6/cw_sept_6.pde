//Coordinate tracking and mouse tracking
//learning how to rotate
void setup(){
  size (600, 600);
  background(0);
  
}
 void draw(){
   //background(0);
   //so that there is only 1 line (refreshes the bg)
   //line (x point1, y point1, x point2, y point2);
   fill (0, 10);
   rect (0, 0, width, height); 
   //stroke(random (0, 255), random (0, 255), random (0, 255));
   stroke (255);
   line (width/2, height/2, mouseX, mouseY);
   line (mouseX, height/2, mouseY, height/2);
   //this is how to draw various lines in the sketch
   println (mouseX);
   println (mouseY);
   
 }
 