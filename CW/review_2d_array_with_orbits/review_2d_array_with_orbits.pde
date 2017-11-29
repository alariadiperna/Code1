Ellipse myEllipse;
int num=100;
Ellipse[][] ellipses = new Ellipse[num][num];
int size = 15;
void setup(){
  size(600,600);
  
  myEllipse = new Ellipse(width/2,height/2);
  for(int i=0;i<num;i++){
    for(int j=0;j<num;j++){
      ellipses[i][j] = new Ellipse(i*size,j*size);
    }
  }
}

void draw(){
  background(0);
  noStroke();
  myEllipse.display(color(255,0,0));
  myEllipse.orbit(1);
  
  myEllipse = new Ellipse(width/2,height/2);
  for(int i=0;i<num;i++){
    for(int j=0;j<num;j++){
      color c =int(map(i*j,0,100,0,255));
      ellipses[i][j].display(color(255));
      if((i+j)%2 == 0){
       
      ellipses[i][j].orbit(1);
      }else{
        ellipses[i][j].orbit(-1);
      }
    }
  }
}