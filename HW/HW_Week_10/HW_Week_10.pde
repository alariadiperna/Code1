//CHECK ATTRACTOR FOLDER FOR HW CHANGES

//idea 1: data visualisation
  //https://www.openprocessing.org/sketch/19108#
  //https://www.openprocessing.org/sketch/154848#
  //https://www.openprocessing.org/sketch/301695
//idea 2: interactive narrative 
   //http://kennedyandoswald.com/#!/jfk-bio
   //http://www.sbs.com.au/theboat/
   //http://thegreytales.net/en/
//idea 3: game
  //https://www.openprocessing.org/sketch/11100
  //http://learningprocessing.com/examples/chp10/example-10-10-rain-catcher-game
  //https://gist.github.com/dc74089/4094da7928839063ae06
  
  int num = 15; 
Mover [] mover = new Mover[num]; 
Attractor a; 

void setup(){
   size(500, 500); 
   for (int i = 0; i< num; i++){
     mover[i] = new Mover(random(.1, 1), random(width), random(height)); 
   }
   a = new Attractor(); 
   noStroke(); 
   smooth(); 
}

void draw(){
  fill(40, 70); 
  rect(0, 0, width, height); 
  
  
  a.display(); 
  a.drag();
  a.hover(mouseX, mouseY);

  for(int i = 0; i< num; i++){
    PVector force = a.attract(mover[i]);
    mover[i].applyForce(force); 
    mover[i].update(); 
    mover[i].display(); 
  }
  
}

void mousePressed() {
  a.clicked(mouseX, mouseY);
}

void mouseReleased() {
  a.stopDragging();
}