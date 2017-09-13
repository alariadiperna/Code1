void setup(){
  
}
void draw(){
  //int sum = 4+5; 
  //int sum2 = 5+5;
  //println(sum);
  //println(sum2);
  println(addNumbers(4, 5));
  println(addNumbers(int(random(0,3)),6));
  //put int in front of random so it doesn't return a float/decimal 
}

int addNumbers(int a, int b){
  return a + b;
}