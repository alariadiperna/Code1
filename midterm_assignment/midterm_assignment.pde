//idea: text adventure game

//must include 8:
//Variables 
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


void setup(){
  size (1100, 800);
  smooth();
  background(255);
 dialogueText = new String [5];
 dialogueText[1] = "";
 dialogueText[2] = "";
 dialogueText[3] = "";
 dialogueText[4] = "";
 dialogueText[5] = "";
 
 button1Dialogue = new String [5];
 button1Dialogue[1] = "";
 button1Dialogue[2] = "";
 button1Dialogue[3] = "";
 button1Dialogue[4] = "";
 button1Dialogue[5] = "";
 
 button2Dialogue = new String [5];
 button2Dialogue[1] = "";
 button2Dialogue[2] = "";
 button2Dialogue[3] = "";
 button2Dialogue[4] = "";
 button2Dialogue[5] = "";
}



void draw (){
}

void mousePressed() {
  
}