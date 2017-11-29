//1D array: one slot, one dimension
int num = 60; 
int [] xPos = new int[num];
int size= 10; 
//number of the slots

void setup(){
  size(600, 600);
  background(0);
  
  //filling xPos w/ data
  for(int i =0; i<num; i++){
    xPos[i]= i*size;
  }
}

void draw(){
for(int i = 0; i<num; i++){
  ellipse(xPos[i], 100, size*i, size*i);
}
}