class Particle{
  //set up our data for our particles
  float xPos,yPos;
  float size;
  float xSpeed, ySpeed; 
  int c;
  int r,g,b;
  
  Particle(){
    xPos= mouseX;
    yPos= mouseY; 
    
    xSpeed= random(-5,5);
    ySpeed= random(1,5);
    
  }
  
  void move(){
    xPos= xPos+xSpeed;
    yPos= yPos+ySpeed;
  }
  void gravity(){
    ySpeed += 0.05;
    
  }
  void bounceY(){
    ySpeed = -ySpeed;
    
  }
  void bounceX(){
    xSpeed = -xSpeed;
  }
  void display(){
    c=(int)(abs(xSpeed)+abs(ySpeed))*10+30;
    r=c+40;
    g=c;
    b=250-c; 
    
    if(abs(xSpeed)>abs(ySpeed)){
      size= abs(xSpeed*5 +5);
    }else{
      size=abs(ySpeed)*5+5;
    }
    //size= 50; 
    noStroke();
    fill(r,g,b);
    ellipse(xPos,yPos,size,size);
  }
}