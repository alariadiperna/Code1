int w;
int h;
float myFloat;
String myString;

void setup (){
 myString= "It's supposed to be a face...";
 w= 150;
 h= 250;
 size (550, 550);
 background (80, 120, 100);
 textSize (20);
 frameRate (2.5);
}

void draw(){
  fill (random (0, 255), random (0, 255));
  rect (width*.44, height*.44, 50, 50);
  
  fill (random (0, 255), random (0, 255));
  ellipse (width*.25, height*.25, 75, 75);
  
  fill (random (0, 255), random (0, 255));
  ellipse (width*.75, height*.25, 75, 75);
  
  text(myString, width*.3, height*.9);
  noStroke ();

  fill(random (0, 255));
  quad(20, 9, 60, 60, 60, 40, height*1, 20);
  
  arc(300, height*.7, width*.7, 40, HALF_PI, PI);
  
  arc(300, height*.7, width*.7, 40, PI, PI+QUARTER_PI);
  
}

//pseudocode(){
  //making a rice cooker pancake
  //variables: pancakeMix, egg, 100MgMilk, riceCooker, mixingBowl, spoon, strawberries, pancake, plate
  //functions: combineIngredientsInBowl(), mix(), putInRiceCooker(), turnOnRiceCooker(), transferToPlate()
  
  //combineIngredientsInBowl(mixingBowl, pancakeMix, egg, 100MgMilk, strawberries);
  //mix (mixingBowl, pancakeMix, egg, 100MgMilk, strawberries, spoon);
  //putInRiceCooker (pancakeMix, egg, 100MgMilk, strawberries, riceCooker);
  //turnOnRiceCooker(riceCooker);
  //transferToPlate(riceCooker, pancake, plate);
  
//} 