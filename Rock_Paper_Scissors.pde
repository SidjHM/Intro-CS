String userchoice;
int randomInt = -1;
String comp = "Not Chosen";
int PointsYou = 0;
int PointsComp = 0;
int draw = 0;
int counter = 480;
String things="Click something to start the game";
void setup() {
  size(700, 700);
  textSize(40);
}

void draw() {
  background(150);
  //Creating the Buttons
  fill(255);
  if ( userchoice == "Rock") {
    fill(255, 0, 255);
  }
  rect(70, 50, 150, 50); //Rock
  fill(255);
  if ( userchoice == "Paper") {
    fill(255, 0, 255);
  }
  rect(270, 50, 150, 50); //Paper
  fill(255);
  if ( userchoice == "Scissors") {
    fill(255, 0, 255);
  }
  rect(470, 50, 150, 50); //Scissors
  fill(255);


  //Writing the Text
  fill(0, 0, 0);
  text("Rock", 105, 90);
  text("Paper", 295, 90);
  text("Scissors", 480, 90);
  fill(150, 0, 150);
  text("Computer", width/2-150, 400);
  text (comp, width/2-150, 450);

  text (" Your Points:"+PointsYou, 30, 550);
  text(" Computer Points:"+PointsComp, 350, 550);
  fill(0, 0, 0);
text(things, 80,200);



  if (PointsYou >= 10) {
    background (0, 0, 0);
    fill(255);
    text (" You Win", 300, 350);
  } else if (PointsComp >= 10) {
    background (0, 0, 0);
    fill(255);
    text (" Computer Wins", 300, 350);
  }
 
}

void mousePressed() {
  //Choices
  if (mouseX >= 70 && mouseY >= 50 && mouseY<= 100 && mouseX<= 220) {
    userchoice = "Rock";
    randomInt = (int)random(3);
  } else if (mouseX >= 270 && mouseY >= 50 && mouseY<= 100 && mouseX<= 420) {
    userchoice = "Paper";
    randomInt = (int)random(3);
  } else if (mouseX >= 470 && mouseY >= 50 && mouseY<= 100 && mouseX<= 620) {
    userchoice = "Scissors";
    randomInt = (int)random(3);
  } 
  

  //Comp Choices
  if (randomInt == 0) {
    comp = "Rock";
  } else if (randomInt == 1) {
    comp = "Paper";
  } else if (randomInt == 2) {
    comp = "Scissors";
  } else {
    comp = "Not Chosen";
  }


  // Points
  if (comp == "Rock" && userchoice == "Paper") {
    PointsYou = PointsYou +1;
  } else if (comp == "Paper" && userchoice == "Rock") {
    PointsComp = PointsComp +1;
  } else if (comp == "Paper" && userchoice == "Scissors") {
    PointsYou = PointsYou +1;
  } else if (comp == "Scissors" && userchoice == "Paper") {
    PointsComp = PointsComp +1;
  } else if (comp == "Scissors" && userchoice == "Rock") {
    PointsYou = PointsYou +1;
  } else if (comp == "Rock" && userchoice == "Scissors") {
    PointsComp = PointsComp +1;
  } else {
    draw=draw+1;
  }
}
