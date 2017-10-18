//idea: text adventure game

//must include 8:
//Variables $
//Translation/rotation/or scale
//Mouse/keyboard inputs
//Functions (with or without a return type)
//Boolean 
//If/else 
//Switch 
//While loop
//For loop 
//2D nested loops
//A pattern 
//Array 
//2D Array  

//PRECEDENT 1: https://forum.processing.org/two/discussion/18664/text-adventure-game-in-processing
//PRECEDENT 2: https://forum.processing.org/two/discussion/9562/simple-choose-your-own-adventure



int level;
String dialogueText[];
String button1Dialogue [];
String button2Dialogue[];
boolean buttonClicked;
boolean buttonClicked2;


void setup(){
  size (1100, 800);
  smooth();
  textSize(15);
  text("CLICK TO INCREASE LEVELS", width/3,height/2);
  
//  level = 0; 
// dialogueText = new String [8];
// dialogueText[1] = "You are a wine connoisseur. You've gone to a fair to try the local wine and run into an old aquaintance. After catching up, he offers to show you his wine cellar, which holds a collection of rare vintage wines. Will you go with him?";
// dialogueText[2] = "You and him head over to his house, which is nearby. He offers you a glass of wine. You drink and remininsce. After a while, he offers to show you his rarest and most special Spanish wine, which is at the bottom of his cellar. Should you stay a bit longer to try the wine?";
// dialogueText[3] = "Your aquaintance looks deeply disappointed but says goodbye. You enjoy the fair all night and wake up with a splitting headache.";
// dialogueText[4] = "Your aquaintance smiles to himself as he opens the cellar door. You begin the descent.";
// dialogueText[5] = "";
// dialogueText[6] = "";
// dialogueText[7] = "";
// dialogueText[8] = "";
 
////dialogueText[] dialogTexts =
////{
////  new dialogueText("1", "You are a wine connoisseur. You've gone to a fair to try the local wine and run into an old aquaintance. After catching up, he offers to show you his wine cellar, which holds a collection of rare vintage wines. Will you go with him?", "OK#25" ),;
  
//}

// button1Dialogue = new String [5];
// button1Dialogue[1] = "Yes";
// button1Dialogue[2] = "No";
// button1Dialogue[3] = "";
// button1Dialogue[4] = "";
// button1Dialogue[5] = "";
 
// button2Dialogue = new String [5];
// button2Dialogue[1] = "No";
// button2Dialogue[2] = "";
// button2Dialogue[3] = "";
// button2Dialogue[4] = "";
// button2Dialogue[5] = "";
} 



void draw (){
  ellipse(150,600,150,150);
  
    ellipse(950,600,150,150);; 
    
    
  //  if (levelNumber == 1)
  //{
  //  LevelZero();
  //} else if (levelNumber == 1)
  //{
  //  LevelOne();
  //} else if (levelNumber == 2) 
  //{
  //  LevelTwo();
  //} else if (levelNumber == 3) 
  //{
  //  LevelThree();
  //} else if (levelNumber == 4) 
  //{
  //  LevelFour();
  //} else if (levelNumber == 5) 
  //{
  //  LevelFive();
  //} else if (levelNumber == 6) 
  //{
  //  LevelSix();
  //} else if (levelNumber == 7) 
  //{
  //  LevelSeven();
  //}
}

//void mousePressed() {
  
//}

//This story is The Cask of Amontillado by Edgar Allen Poe.