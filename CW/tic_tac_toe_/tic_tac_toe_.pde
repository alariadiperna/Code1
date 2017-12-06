int [][] board; 
boolean [][] clicked; 
int size = 3; 
boolean player1 = true; 
boolean player1Wins, player2Wins = false;
boolean tie = false; 


void setup(){
  size(600, 300); 
  textSize(24); 
  
  board = new int[size][size]; 
  clicked = new boolean[size][size]; 
  
  for(int i = 0; i<size; i++){
    for(int j = 0; j<size; j++){
      board[i][j] = 0; 
      clicked[i][j] = false; 
    }
  }
}

void draw(){
  background(255); 
  
  for(int i= 0; i<size; i++){
    for(int j =0; j<size; j++){
      noFill(); 
      rect(300 + i*100, j*100, 100, 100); 
      
      if(board[i][j] == 1){
        ellipse(350 + i*100, j*100 +50, 100, 100);
      }
      
      if(board[i][j] == 2){
        line(300+i*100, j*100,i*100+400, j*100 + 100); 
        line(400+i*100, j*100,i*100+300, j*100 + 100);
      }
    }
  }
  checkWinner();
  
  String winner;
  if(player1Wins){
    winner = "0's";
    
  }else if (player2Wins){
    winner = "X's";
  }
  
  if(player1Wins || player2Wins){
    
  
  fill(0);
  if(player1){
    text("O's turn", 0, 100);
  }else{
    text("X's turn", 0,100);
  }
}

void checkWinner(){
  if(board[0][0] ==1 && board[1][1] ==1 && board[2][2] ==1){
    player1Wins = true;
  }else if(board[0][0] ==2 && board[1][1] ==2 && board[2][2] ==2){
  player2Wins = true;
}
if(board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1){
    player1Wins = true; 
  }else if(board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2){
    player2Wins = true; 
  }
  
  for(int i = 0; i< size; i++){
    //check rows for a winner 
    if(board[0][i] == 1 && board[1][i] == 1 && board[2][i] == 1){
      player1Wins = true; 
    }else if(board[0][i] == 2 && board[1][i] == 2 && board[2][i] == 2){
      player2Wins = true; 
    }
    
    //check columns for a winner 
    if(board[i][0] == 1 && board[i][1] == 1 && board[i][2] == 1){
      player1Wins = true; 
    }else if(board[i][0] == 2 && board[i][1] == 2 && board[i][2] == 2){
      player2Wins = true; 
    }
  }
}

void mousePressed(){
  for(int i = 0; i< size; i++){
    for(int j = 0; j<size; j++){
      if(clicked[i][j] == false){
        if(mouseX>=300+i*100 && mouseX<=(300 + (i+1)*100) && 
        mouseY>=j*100 && mouseY<=(j+1)*100){
          clicked[i][j] = true;
          if(player1){
            //draws an O
            board[i][j] = 1; 
          }else{
            board[i][j] = 2; 
          }
          player1 = !player1; 
        }
      }
    }
  }
}