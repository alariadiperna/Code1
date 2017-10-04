int f = 20;
void setup(){
  size(850, 650);
  noStroke();
  fill(0);
  smooth();
  }

void draw(){

  if(frameCount % 40 ==0){
  background(255);
  
  pushMatrix();
  fill(97);
  ellipse(width/4,height/2.5,300,80);
  fill(random (0,255), random(0, 255), random(0, 255));
  ellipse(width/4,height/2.5,width/10,height/10);


  translate (220, 0);
  fill(97);
  ellipse(width/2,height/2.5,300,80);
  //ellipse(width/2,height/3,200,80);
  fill(random (0,255), random(0, 255), random(0, 255));
  ellipse(width/2,height/2.5,width/10,height/10);
  popMatrix();
  }
    translate(width/2,height/2);
  rotate(map(millis()%2000,0,2000,0,TWO_PI));
  beginShape();
  for (float r = 0; r < f *TWO_PI; r+=PI/360.0 ) {
    float x = 4 * r * cos(r);
    float y = 4 * r * sin(r);
    ellipse(x,y,2,2);
  }
  endShape();

}
 //spiral was made with help from this forum: https://forum.processing.org/two/discussion/13125/for-loop-to-make-a-spiral