//Name: Andrea Cen
//Date: January 10 2020
//Teacher: Mr. Rosen
//Description:

//Variable Declaration

//next screen
int nextScreen;

//introduction screen start time
int introScreenStartTime;

//color value change
float colorChange;

//sun variables
float sunCenterX = 450;
float sunCenterY = -100;

//panda variables
float pandaStartX = 75;
float pandaStartY = 70;
//panda stone position in panda game screen
float stoneDropX;
float stoneDropY;

//fox variables
float foxStartX = 660;
float foxStartY = 10;
//fox variables in fox game screen
int foxSpeed = 100;
int bulletOffsetX;
int bulletOffsetY;
float shootAngle; 

//pig variables
float pigStartX = 1600;
float pigStartY = 0;
//pig fire position in pig game screen
float fireDropY1;
float fireDropY2;

//rabbit variables
float rabbitStartX = 440;
float rabbitStartY = 302;
//if shown in rabbit game screen
boolean rabbitInGame;
//rabbit hole variables
float rabbitHoleCenterX = 467;
float rabbitHoleCenterY = 383;
//variables in rabbit game screen
float lifterY;

//cat variables
float catStartX = 208;
float catStartY = 140;
//cat snore
int snoreLevel;

//cat variables in cat game screen
int catBehindBoard = 1;
boolean catFound;
int showCatDelay = 50;
//board 1
float board1Left = 10;
float board1Top = 220;
float board1Right = 150;
float board1Bottom = 370;
//board 2
float board2Left = 170;
float board2Top = 220;
float board2Right = 310;
float board2Bottom = 370;
//board 3
float board3Left = 330;
float board3Top = 220;
float board3Right = 470;
float board3Bottom = 370;
//board 4
float board4Left = 490;
float board4Top = 220;
float board4Right = 630;
float board4Bottom = 370;
//board 5
float board5Left = 650;
float board5Top = 220;
float board5Right = 790;
float board5Bottom = 370;
//check which board is clicked
boolean board1Clicked;
boolean board2Clicked;
boolean board3Clicked;
boolean board4Clicked;
boolean board5Clicked;

//dog variables
float dogStartX = 700;
float dogStartY = 150;
//up or down
boolean isDogMovingDown = true;

//bone position in dog game screen
float boneLeft;
float boneTop;
float boneRight;
float boneBottom;

//game status
boolean shooting;
int gameStartTime;
int gameDuration;
boolean gameOver;

//game max time in seconds
int gameMaxTime = 30;

//scores in each game
int scoreInDogGame;
int scoreInPigGame;
int scoreInCatGame;
int scoreInFoxGame;
int scoreInPandaGame;
int scoreInRabbitGame;

//"True" button
float trueButtonLeft = 300;
float trueButtonTop = 300;
float trueButtonRight = 360;
float trueButtonBottom = 360;
//"False" button
float falseButtonLeft = 500;
float falseButtonTop = 300;
float falseButtonRight = 560;
float falseButtonBottom = 360;

//navigation button
int navButtonLeft = 640;
int navButtonTop = 450;
int navButtonRight = 790;
int navButtonBottom = 490;
String navButtonPrompt;
boolean navButtonClicked;

//instructions button
int insButtonLeft = 120;
int insButtonTop = 160;
int insButtonRight = 370;
int insButtonBottom = 260;
boolean insButtonClicked;

//maze buttons
int mazeButtonLeft = 420;
int mazeButtonTop = 160;
int mazeButtonRight = 670;
int mazeButtonBottom = 260;
boolean mazeButtonClicked;

//play button
int playButtonLeft = 480;
int playButtonTop = 450;
int playButtonRight = 630;
int playButtonBottom = 490;
boolean playButtonClicked;

//exit button
int exitButtonLeft = 420;
int exitButtonTop = 260;
int exitButtonRight = 670;
int exitButtonBottom = 410;
boolean exitButtonClicked;

//ball and animal positions in maze
//ball
float ballX = 40.0;
float ballY = 30.0;
boolean canMoveUp = true;
boolean canMoveDown = true;
boolean canMoveLeft = true;
boolean canMoveRight = true;
//dog
float dogXMin = 25;
float dogYMin = 250;
float dogXMax = 95;
float dogYMax = 295;
//cat
float catXMin = 690;
float catYMin = 16;
float catXMax = 760;
float catYMax = 61;
//pig
float pigXMin = 130;
float pigYMin = 18;
float pigXMax = 220;
float pigYMax = 68;
//fox
float foxXMin = 340;
float foxYMin = 140;
float foxXMax = 414;
float foxYMax = 207;
//panda
float pandaXMin = 340;
float pandaYMin = 350;
float pandaXMax = 400;
float pandaYMax = 410;
//rabbit
float rabbitXMin = 460;
float rabbitYMin = 25;
float rabbitXMax = 505;
float rabbitYMax = 112;

//see if an animal in maze is hit
boolean dogCompleted;
boolean catCompleted;
boolean pigCompleted;
boolean foxCompleted;
boolean pandaCompleted;
boolean rabbitCompleted;

//test
float testX = 680;
float testY = 325;

//if the question is already answered
boolean questionAnswered = false;

void setup() {
  size(800, 500);
  frameRate(30);
  rectMode(CORNERS);

  //start screen
  nextScreen = 1;
  introScreenStartTime = millis();
}

void draw() {
  background(95 - colorChange, 125 - colorChange, 245 - colorChange);

  switch(nextScreen) {
  case 1:
    animatedIntroScreen();
    break;
  case 2:
    mainMenuScreen();
    break;
  case 3:
    instructionsScreen();
    break;
  case 4:
    mazeOfLearningScreen();
    break;
  case 5:
    dogInfoScreen(); 
    break;
  case 6:
    catInfoScreen();
    break;
  case 7:
    pigInfoScreen();
    break;
  case 8:
    foxInfoScreen();
    break;
  case 9:
    pandaInfoScreen();
    break;
  case 10:
    rabbitInfoScreen();
    break;
  case 11:
    testScreen();
    break;
  case 12:
    dogGameScreen(); 
    break;
  case 13:
    catGameScreen();
    break;
  case 14:
    pigGameScreen();
    break;
  case 15:
    foxGameScreen();
    break;
  case 16:
    pandaGameScreen();
    break;
  case 17:
    rabbitGameScreen();
    break;
  case 18:
    congratulationScreen();
    break;
  case 19:
    goodByeScreen();
    break;
  }
}

//Introduction
void animatedIntroScreen() {
  colorChange += 0.2;

  // sun
  fill(255, 120 - sunCenterY, 45);
  sunCenterY += 0.3;
  circle(sunCenterX, sunCenterY, 200);

  //panda
  pandaStartY += 0.08;
  drawPanda();

  //grass background
  noStroke();
  fill(196 - colorChange, 219 - colorChange, 125 - colorChange);
  rect(0, 150, 800, 500);

  //lake
  fill(107 - colorChange, 127 - colorChange, 227 - colorChange);
  beginShape();
  vertex(808, 227);
  vertex(800, 233);
  vertex(791, 236);
  vertex(786, 239);
  vertex(775, 241);
  vertex(763, 244);
  vertex(754, 246);
  vertex(724, 243);
  vertex(707, 233);
  vertex(692, 239);
  vertex(682, 248);
  vertex(672, 259);
  vertex(661, 260);
  vertex(642, 267);
  vertex(593, 276);
  vertex(477, 281);
  vertex(464, 288);
  vertex(454, 293);
  vertex(440, 293);
  vertex(422, 300);
  vertex(430, 310);
  vertex(442, 318);
  vertex(535, 339);
  vertex(536, 347);
  vertex(539, 361);
  vertex(540, 365);
  vertex(546, 372);
  vertex(557, 378);
  vertex(572, 382);
  vertex(581, 380);
  vertex(595, 373);
  vertex(603, 369);
  vertex(611, 370);
  vertex(621, 373);
  vertex(629, 377);
  vertex(640, 382);
  vertex(647, 384);
  vertex(663, 381);
  vertex(697, 375);
  vertex(711, 372);
  vertex(759, 381);
  vertex(808, 377);
  endShape(CLOSE);

  //mountain
  fill(49 - colorChange/2, 133 - colorChange/2, 84 - colorChange/2);
  triangle(0, 150, 400, 150, 360, 50);
  fill(3 - colorChange/2, 56 - colorChange/2, 25 - colorChange/2);
  triangle(360, 50, 400, 150, 450, 116);
  fill(106 - colorChange/2, 107 - colorChange/2, 61 - colorChange/2);
  triangle(400, 150, 800, 150, 550, 50);

  //fox
  foxStartX -= 0.15;
  foxStartY -= 0.02;
  drawFox();

  //pigs
  pushMatrix();
  translate(pigStartX - 1500, pigStartY + 50);
  scale(0.5, 0.5);
  drawPig();
  popMatrix();

  pushMatrix();
  translate(pigStartX - 1440, pigStartY + 60);
  scale(0.5, 0.5);
  drawPig();
  popMatrix();

  pushMatrix();
  translate(pigStartX - 1520, pigStartY + 80);
  scale(0.5, 0.5);
  drawPig();
  popMatrix();

  pigStartX--;  //moving from right to left
  if (millis() - introScreenStartTime > 25000) {
    pigStartX -= 5; // move faster
  }
  drawPig();

  //cat
  drawCat();

  //rabbit hole
  drawRabbitHole();

  //rabbit
  float timer = millis() - introScreenStartTime;
  if ( timer < 3000 || (timer > 8000 && timer < 15000) || (timer > 20000 && timer < 32000)) {
    drawRabbit();
  }

  //grass
  stroke(0);
  strokeWeight(1);

  fill(102 - colorChange/2, 133 - colorChange/2, 8 - colorChange/2);
  arc(270, 420, 300, 280, PI, TWO_PI * 3/4);
  fill(196 - colorChange, 219 - colorChange, 125 - colorChange);
  arc(270, 420, 250, 280, PI, TWO_PI * 3/4);
  fill(102 - colorChange/2, 133 - colorChange/2, 8 - colorChange/2);
  arc(10, 420, 300, 280, TWO_PI * 3/4, TWO_PI);
  fill(196 - colorChange, 219 - colorChange, 125 - colorChange);
  arc(0, 420, 270, 280, TWO_PI * 3/4, TWO_PI);
  fill(102 - colorChange/2, 133 - colorChange/2, 8 - colorChange/2); 
  arc(250, 420, 200, 200, PI, TWO_PI * 3/4);
  fill(196 - colorChange, 219 - colorChange, 125 - colorChange);
  arc(250, 420, 170, 200, PI, TWO_PI * 3/4);
  fill(102 - colorChange/2, 133 - colorChange/2, 8 - colorChange/2);
  arc(40, 420, 190, 200, TWO_PI * 3/4, TWO_PI);
  fill(196 - colorChange, 219 - colorChange, 125 - colorChange);
  arc(30, 420, 160, 200, TWO_PI * 3/4, TWO_PI);

  // stones
  fill(145 - colorChange/2, 139 - colorChange/2, 132 - colorChange/2);
  beginShape();
  vertex(109, 409);
  vertex(100, 412);
  vertex(95, 413);
  vertex(93, 414);
  vertex(87, 420);
  vertex(105, 426);
  vertex(117, 424);
  vertex(126, 424);
  vertex(133, 418);
  vertex(129, 415);
  endShape(CLOSE);

  beginShape();
  vertex(100, 425);
  vertex(87, 430);
  vertex(83, 434);
  vertex(80, 439);
  vertex(86, 443);
  vertex(97, 442);
  vertex(117, 441);
  vertex(127, 434);
  vertex(128, 428);
  vertex(120, 425);
  endShape(CLOSE);

  beginShape();
  vertex(125, 413);
  vertex(126, 420);
  vertex(129, 416);
  vertex(140, 411);
  vertex(153, 409);
  vertex(160, 411);
  vertex(173, 415);
  vertex(177, 421);
  vertex(178, 429);
  vertex(166, 432);
  vertex(152, 435);
  vertex(127, 429);
  endShape(CLOSE);

  //dogs
  dogStartX -= 2; //moving from right to left
  if (isDogMovingDown) { //moving up and down
    dogStartY += 1;
    if (dogStartY > 300 ) {
      isDogMovingDown = false;
    }
  } else {
    dogStartY -= 1;
    if (dogStartY < 200 ) {
      isDogMovingDown = true;
    }
  }
  drawDog();

  pushMatrix();
  translate(dogStartX + 900, dogStartY - 20);
  scale(0.5, 0.5);
  drawDog();
  popMatrix();

  pushMatrix();
  translate(dogStartX + 950, dogStartY - 25);
  scale(0.5, 0.5);
  drawDog();
  popMatrix();

  pushMatrix();
  translate(dogStartX + 1100, dogStartY - 40);
  scale(0.5, 0.5);
  drawDog();
  popMatrix();

  // change screen after 38 seconds.
  if (millis() - introScreenStartTime > 38000) {
    colorChange = 0;
    nextScreen = 2;  //goto mainMenuScreen
  }
}

//draw panda
void drawPanda() {
  strokeWeight(1);

  //ear
  fill(0); //black
  ellipse(pandaStartX, pandaStartY, 30, 30);
  ellipse(74 + pandaStartX, pandaStartY, 30, 30);

  //head
  fill(255); //white
  ellipse(36 + pandaStartX, 26 + pandaStartY, 80, 80);

  //eyes
  fill(0); //black
  beginShape();
  vertex(21 + pandaStartX, 5 + pandaStartY);
  vertex(12 + pandaStartX, 11 + pandaStartY);
  vertex(8 + pandaStartX, 18 + pandaStartY);
  vertex(6 + pandaStartX, 19 + pandaStartY);
  vertex(10 + pandaStartX, 38 + pandaStartY);
  vertex(18 + pandaStartX, 34 + pandaStartY);
  vertex(27 + pandaStartX, 24 + pandaStartY);
  vertex(28 + pandaStartX, 12 + pandaStartY);
  endShape(CLOSE);

  beginShape();
  vertex(50 + pandaStartX, 6 + pandaStartY);
  vertex(59 + pandaStartX, 9 + pandaStartY);
  vertex(66 + pandaStartX, 18 + pandaStartY);
  vertex(68 + pandaStartX, 19 + pandaStartY);
  vertex(61 + pandaStartX, 35 + pandaStartY);
  vertex(54 + pandaStartX, 34 + pandaStartY);
  vertex(49 + pandaStartX, 25 + pandaStartY);
  vertex(47 + pandaStartX, 18 + pandaStartY);
  vertex(46 + pandaStartX, 13 + pandaStartY);
  endShape(CLOSE);

  fill(255); //white
  ellipse(22 + pandaStartX, 15 + pandaStartY, 5, 5);
  ellipse(52 + pandaStartX, 15 + pandaStartY, 5, 5);

  //nose
  fill(0); //black
  ellipse(36 + pandaStartX, 40 + pandaStartY, 15, 10);
}

//draw fox
void drawFox() {
  fill(219 - colorChange, 45 - colorChange, 22 - colorChange); //red

  stroke(219 - colorChange, 45 - colorChange, 22 - colorChange); //red
  strokeWeight(1);

  //body
  beginShape();
  vertex(foxStartX, 12 + foxStartY);
  vertex(12 + foxStartX, 9 + foxStartY);
  vertex(15 + foxStartX, 2 + foxStartY);
  vertex(74 + foxStartX, foxStartY);
  vertex(64 + foxStartX, 10 + foxStartY);
  vertex(49 + foxStartX, 17 + foxStartY);
  vertex(36 + foxStartX, 18 + foxStartY);
  vertex(44 + foxStartX, 39 + foxStartY);
  vertex(79 + foxStartX, 55 + foxStartY);

  //tail
  vertex(85 + foxStartX, 66 + foxStartY);

  vertex(95 + foxStartX, 71 + foxStartY);
  vertex(100 + foxStartX, 77 + foxStartY);
  vertex(106 + foxStartX, 89 + foxStartY);
  vertex(113 + foxStartX, 111 + foxStartY);
  vertex(117 + foxStartX, 127 + foxStartY);
  vertex(119 + foxStartX, 133 + foxStartY);
  vertex(125 + foxStartX, 142 + foxStartY);
  vertex(112 + foxStartX, 136 + foxStartY);
  vertex(100 + foxStartX, 129 + foxStartY);
  vertex(94 + foxStartX, 122 + foxStartY);
  vertex(92 + foxStartX, 108 + foxStartY);
  vertex(93 + foxStartX, 88 + foxStartY);
  vertex(91 + foxStartX, 79 + foxStartY);
  vertex(86 + foxStartX, 70 + foxStartY);
  vertex(72 + foxStartX, 100 + foxStartY);
  vertex(73 + foxStartX, 105 + foxStartY);
  vertex(65 + foxStartX, 121 + foxStartY);
  vertex(57 + foxStartX, 119 + foxStartY);
  vertex(65 + foxStartX, 121 + foxStartY);
  vertex(73 + foxStartX, 105 + foxStartY);
  vertex(59 + foxStartX, 79 + foxStartY);
  vertex(32 + foxStartX, 74 + foxStartY);
  vertex(19 + foxStartX, 77 + foxStartY);
  vertex(8 + foxStartX, 96 + foxStartY);
  vertex(foxStartX, 93 + foxStartY);
  vertex(8 + foxStartX, 96 + foxStartY);
  vertex(19 + foxStartX, 77 + foxStartY);
  vertex(22 + foxStartX, 66 + foxStartY);
  vertex(16 + foxStartX, 27 + foxStartY);
  vertex(3 + foxStartX, 18 + foxStartY);
  endShape(CLOSE);

  //eye
  fill(0);
  ellipse(20 + foxStartX, 12 + foxStartY, 5, 5);
}

//draw pig
void drawPig() {
  fill(219 - colorChange, 101 - colorChange/2, 205 - colorChange); //pink
  stroke(255 - colorChange);

  //body
  beginShape();
  vertex(2 + pigStartX, 135 + pigStartY);
  vertex(5 + pigStartX, 121 + pigStartY);
  vertex(7 + pigStartX, 122 + pigStartY);
  vertex(15 + pigStartX, 120 + pigStartY);
  vertex(19 + pigStartX, 119 + pigStartY);
  vertex(31 + pigStartX, 109 + pigStartY);
  vertex(42 + pigStartX, 106 + pigStartY);
  vertex(45 + pigStartX, 104 + pigStartY);
  vertex(52 + pigStartX, 104 + pigStartY);
  vertex(54 + pigStartX, 101 + pigStartY);
  vertex(58 + pigStartX, 96 + pigStartY);
  vertex(65 + pigStartX, 91 + pigStartY);
  vertex(69 + pigStartX, 97 + pigStartY);
  vertex(71 + pigStartX, 109 + pigStartY);
  vertex(76 + pigStartX, 112 + pigStartY);
  vertex(80 + pigStartX, 114 + pigStartY);
  vertex(85 + pigStartX, 115 + pigStartY);
  vertex(121 + pigStartX, 118 + pigStartY);
  vertex(140 + pigStartX, 117 + pigStartY);
  vertex(186 + pigStartX, 119 + pigStartY);
  vertex(194 + pigStartX, 121 + pigStartY);
  vertex(201 + pigStartX, 127 + pigStartY);
  vertex(208 + pigStartX, 133 + pigStartY);
  vertex(211 + pigStartX, 146 + pigStartY);
  vertex(207 + pigStartX, 162 + pigStartY);
  vertex(198 + pigStartX, 175 + pigStartY);
  vertex(199 + pigStartX, 193 + pigStartY);
  vertex(196 + pigStartX, 197 + pigStartY);
  vertex(188 + pigStartX, 209 + pigStartY);
  vertex(181 + pigStartX, 226 + pigStartY);
  vertex(176 + pigStartX, 229 + pigStartY);
  vertex(170 + pigStartX, 228 + pigStartY);
  vertex(168 + pigStartX, 222 + pigStartY);
  vertex(172 + pigStartX, 215 + pigStartY);
  vertex(175 + pigStartX, 209 + pigStartY);
  vertex(179 + pigStartX, 197 + pigStartY);
  vertex(178 + pigStartX, 183 + pigStartY);
  vertex(177 + pigStartX, 181 + pigStartY);
  vertex(172 + pigStartX, 175 + pigStartY);
  vertex(169 + pigStartX, 169 + pigStartY);
  vertex(171 + pigStartX, 176 + pigStartY);
  vertex(139 + pigStartX, 181 + pigStartY);
  vertex(114 + pigStartX, 182 + pigStartY);
  vertex(115 + pigStartX, 171 + pigStartY);
  vertex(110 + pigStartX, 199 + pigStartY);
  vertex(106 + pigStartX, 208 + pigStartY);
  vertex(105 + pigStartX, 222 + pigStartY);
  vertex(103 + pigStartX, 228 + pigStartY);
  vertex(96 + pigStartX, 228 + pigStartY);
  vertex(87 + pigStartX, 229 + pigStartY);
  vertex(92 + pigStartX, 217 + pigStartY);
  vertex(94 + pigStartX, 197 + pigStartY);
  vertex(92 + pigStartX, 192 + pigStartY);
  vertex(89 + pigStartX, 186 + pigStartY);
  vertex(85 + pigStartX, 179 + pigStartY);
  vertex(75 + pigStartX, 173 + pigStartY);
  vertex(61 + pigStartX, 169 + pigStartY);
  vertex(57 + pigStartX, 168 + pigStartY);
  vertex(48 + pigStartX, 163 + pigStartY);
  vertex(41 + pigStartX, 159 + pigStartY);
  vertex(32 + pigStartX, 153 + pigStartY);
  vertex(21 + pigStartX, 149 + pigStartY);
  vertex(15 + pigStartX, 145 + pigStartY);
  vertex(12 + pigStartX, 143 + pigStartY);
  vertex(7 + pigStartX, 138 + pigStartY);
  vertex(2 + pigStartX, 135 + pigStartY);
  endShape(CLOSE);

  //front leg
  beginShape();
  vertex(75 + pigStartX, 173 + pigStartY);
  vertex(79 + pigStartX, 189 + pigStartY);
  vertex(77 + pigStartX, 202 + pigStartY);
  vertex(74 + pigStartX, 208 + pigStartY);
  vertex(69 + pigStartX, 215 + pigStartY);
  vertex(76 + pigStartX, 219 + pigStartY);
  vertex(82 + pigStartX, 218 + pigStartY);
  vertex(86 + pigStartX, 213 + pigStartY);
  vertex(87 + pigStartX, 209 + pigStartY);
  vertex(89 + pigStartX, 203 + pigStartY);
  vertex(91 + pigStartX, 187 + pigStartY);
  vertex(87 + pigStartX, 182 + pigStartY);
  vertex(84 + pigStartX, 178 + pigStartY);
  endShape(CLOSE);

  //back leg
  beginShape();
  vertex(202 + pigStartX, 170 + pigStartY);
  vertex(205 + pigStartX, 171 + pigStartY);
  vertex(212 + pigStartX, 174 + pigStartY);
  vertex(214 + pigStartX, 182 + pigStartY);
  vertex(213 + pigStartX, 206 + pigStartY);
  vertex(209 + pigStartX, 220 + pigStartY);
  vertex(201 + pigStartX, 221 + pigStartY);
  vertex(202 + pigStartX, 190 + pigStartY);
  vertex(199 + pigStartX, 187 + pigStartY);
  vertex(197 + pigStartX, 173 + pigStartY);
  endShape(CLOSE);

  //nose
  strokeWeight(3);
  line(7 + pigStartX, 125 + pigStartY, 9 + pigStartX, 132 + pigStartY);
  line(11 + pigStartX, 125 + pigStartY, 12 + pigStartX, 130 + pigStartY);
  line(14 + pigStartX, 124 + pigStartY, 15 + pigStartX, 129 + pigStartY);

  //eye
  ellipse(33 + pigStartX, 125 + pigStartY, 7, 4);

  //ear
  strokeWeight(3);
  beginShape();
  vertex(47 + pigStartX, 111 + pigStartY);
  vertex(55 + pigStartX, 105 + pigStartY);
  vertex(64 + pigStartX, 103 + pigStartY);
  vertex(58 + pigStartX, 125 + pigStartY);
  vertex(55 + pigStartX, 124 + pigStartY);
  vertex(54 + pigStartX, 120 + pigStartY);
  vertex(54 + pigStartX, 114 + pigStartY);
  vertex(55 + pigStartX, 112 + pigStartY);
  endShape();

  //tail
  strokeWeight(4);
  beginShape();
  vertex(212 + pigStartX, 147 + pigStartY);
  vertex(216 + pigStartX, 150 + pigStartY);
  vertex(225 + pigStartX, 152 + pigStartY);
  vertex(224 + pigStartX, 143 + pigStartY);
  vertex(223 + pigStartX, 139 + pigStartY);
  vertex(220 + pigStartX, 137 + pigStartY);
  vertex(218 + pigStartX, 140 + pigStartY);
  endShape();

  strokeWeight(2);
  beginShape();
  vertex(218 + pigStartX, 140 + pigStartY);
  vertex(221 + pigStartX, 147 + pigStartY);
  vertex(223 + pigStartX, 146 + pigStartY);
  endShape();
}

//draw cat
void drawCat()
{
  fill(125 - colorChange/2, 124 - colorChange/2, 121 - colorChange/2);
  stroke(0);
  strokeWeight(1);

  //body
  beginShape();
  vertex(73 + catStartX, 80 + catStartY);
  vertex(83 + catStartX, 79 + catStartY);
  vertex(96 + catStartX, 82 + catStartY);
  vertex(110 + catStartX, 90 + catStartY);
  vertex(118 + catStartX, 101 + catStartY);
  vertex(122 + catStartX, 112 + catStartY);
  vertex(123 + catStartX, 124 + catStartY);
  vertex(58 + catStartX, 124 + catStartY);
  endShape(CLOSE);

  //tail
  beginShape();  
  vertex(121 + catStartX, 111 + catStartY);
  vertex(113 + catStartX, 121 + catStartY);
  vertex(112 + catStartX, 122 + catStartY);
  vertex(99 + catStartX, 124 + catStartY);
  vertex(90 + catStartX, 116 + catStartY);
  vertex(86 + catStartX, 112 + catStartY);
  vertex(83 + catStartX, 110 + catStartY);
  vertex(78 + catStartX, 115 + catStartY);
  vertex(77 + catStartX, 118 + catStartY);
  vertex(78 + catStartX, 123 + catStartY);
  vertex(82 + catStartX, 129 + catStartY);
  vertex(85 + catStartX, 132 + catStartY);
  vertex(89 + catStartX, 134 + catStartY);
  vertex(106 + catStartX, 135 + catStartY);
  vertex(118 + catStartX, 134 + catStartY);
  vertex(125 + catStartX, 129 + catStartY);
  vertex(129 + catStartX, 125 + catStartY);
  vertex(131 + catStartX, 118 + catStartY);
  vertex(129 + catStartX, 113 + catStartY);
  vertex(124 + catStartX, 107 + catStartY);
  vertex(121 + catStartX, 106 + catStartY);
  endShape(CLOSE);

  //left ear
  beginShape();
  vertex(catStartX, 66 + catStartY);
  vertex(10 + catStartX, 67 + catStartY);
  vertex(18 + catStartX, 68 + catStartY);
  vertex(24 + catStartX, 73 + catStartY);
  vertex(25 + catStartX, 77 + catStartY);
  vertex(17 + catStartX, 81 + catStartY);
  endShape(CLOSE);

  fill(235 - colorChange, 178 - colorChange, 87 - colorChange);
  beginShape();
  vertex(7 + catStartX, 94 + catStartY);
  vertex(2 + catStartX, 84 + catStartY);
  vertex(catStartX, 75 + catStartY);
  vertex(1 + catStartX, 66 + catStartY);
  vertex(7 + catStartX, 69 + catStartY);
  vertex(13 + catStartX, 74 + catStartY);
  vertex(18 + catStartX, 80 + catStartY);
  endShape(CLOSE);

  //right ear
  fill(125 - colorChange/2, 124 - colorChange/2, 121 - colorChange/2);
  beginShape();
  vertex(70 + catStartX, 65 + catStartY);
  vertex(61 + catStartX, 66 + catStartY);
  vertex(54 + catStartX, 69 + catStartY);
  vertex(51 + catStartX, 72 + catStartY);
  vertex(49 + catStartX, 77 + catStartY);
  vertex(57 + catStartX, 82 + catStartY);
  endShape(CLOSE);

  fill(235 - colorChange, 178 - colorChange, 87 - colorChange);
  beginShape();
  vertex(71 + catStartX, 90 + catStartY);
  vertex(73 + catStartX, 71 + catStartY);
  vertex(73 + catStartX, 71 + catStartY);
  vertex(70 + catStartX, 65 + catStartY);
  vertex(65 + catStartX, 69 + catStartY);
  vertex(62 + catStartX, 71 + catStartY);
  vertex(58 + catStartX, 80 + catStartY);
  endShape(CLOSE);

  fill(125 - colorChange/2, 124 - colorChange/2, 121 - colorChange/2);
  //cat face
  ellipse(37 + catStartX, 100 + catStartY, 70, 45);

  //left eye
  strokeWeight(3);
  beginShape();
  vertex(11 + catStartX, 102 + catStartY);
  vertex(14 + catStartX, 100 + catStartY);
  vertex(17 + catStartX, 99 + catStartY);
  vertex(21 + catStartX, 101 + catStartY);
  vertex(24 + catStartX, 102 + catStartY);
  endShape();

  //right eye
  beginShape();
  vertex(44 + catStartX, 102 + catStartY);
  vertex(48 + catStartX, 100 + catStartY);
  vertex(54 + catStartX, 99 + catStartY);
  vertex(58 + catStartX, 101 + catStartY);
  vertex(60 + catStartX, 102 + catStartY);
  endShape();

  //nose
  line(31 + catStartX, 110 + catStartY, 38 + catStartX, 110 + catStartY);

  strokeWeight(1);

  //left leg
  beginShape();
  vertex(4 + catStartX, 124 + catStartY);
  vertex(1 + catStartX, 122 + catStartY);
  vertex(1 + catStartX, 120 + catStartY);
  vertex(2 + catStartX, 116 + catStartY);
  vertex(7 + catStartX, 112 + catStartY);
  vertex(14 + catStartX, 111 + catStartY);
  vertex(23 + catStartX, 111 + catStartY);
  vertex(28 + catStartX, 115 + catStartY);
  vertex(32 + catStartX, 118 + catStartY);
  vertex(34 + catStartX, 124 + catStartY);
  endShape(CLOSE);
  line(27 + catStartX, 124 + catStartY, 25 + catStartX, 119 + catStartY);
  line(30 + catStartX, 124 + catStartY, 28 + catStartX, 119 + catStartY);

  //right leg
  beginShape();
  vertex(32 + catStartX, 124 + catStartY);
  vertex(34 + catStartX, 116 + catStartY);
  vertex(36 + catStartX, 114 + catStartY);
  vertex(42 + catStartX, 112 + catStartY);
  vertex(47 + catStartX, 111 + catStartY);
  vertex(50 + catStartX, 112 + catStartY);
  vertex(67 + catStartX, 115 + catStartY);
  vertex(70 + catStartX, 117 + catStartY);
  vertex(70 + catStartX, 121 + catStartY);
  vertex(67 + catStartX, 124 + catStartY);
  endShape(CLOSE);
  line(32 + catStartX, 124 + catStartY, 36 + catStartX, 118 + catStartY);
  line(36 + catStartX, 124 + catStartY, 38 + catStartX, 120 + catStartY);

  //snore
  snoreLevel++;
  if (snoreLevel > 80) {
    snoreLevel = -20;
  }

  if (snoreLevel >= 20) {
    strokeWeight(1);
    line(37 + catStartX, 50 + catStartY, 47 + catStartX, 52 + catStartY);
    line(47 + catStartX, 52 + catStartY, 37 + catStartX, 60 + catStartY);
    line(37 + catStartX, 60 + catStartY, 47 + catStartX, 62 + catStartY);
  }

  if (snoreLevel >= 40) {
    strokeWeight(2);
    line(47 + catStartX, 30 + catStartY, 57 + catStartX, 32 + catStartY);
    line(57 + catStartX, 32 + catStartY, 47 + catStartX, 42 + catStartY);
    line(47 + catStartX, 42 + catStartY, 57 + catStartX, 44 + catStartY);
  }

  if (snoreLevel >= 60) {
    strokeWeight(3);
    line(57 + catStartX, 2 + catStartY, 70 + catStartX, 6 + catStartY);
    line(70 + catStartX, 6 + catStartY, 57 + catStartX, 19 + catStartY);
    line(57 + catStartX, 19 + catStartY, 70 + catStartX, 24 + catStartY);
  }
}

//draw rabbit hole
void drawRabbitHole()
{
  fill(0);
  ellipse(rabbitHoleCenterX, rabbitHoleCenterY, 80, 30);
}

//draw rabbit
void drawRabbit() {
  strokeWeight(1);

  //left ear
  fill(255 - colorChange, 255 - colorChange, 255 - colorChange);
  beginShape();
  vertex(rabbitStartX, 18 + rabbitStartY);
  vertex(2 + rabbitStartX, 15 + rabbitStartY);
  vertex(6 + rabbitStartX, 9 + rabbitStartY);
  vertex(13 + rabbitStartX, 2 + rabbitStartY);
  vertex(20 + rabbitStartX, rabbitStartY);
  vertex(23 + rabbitStartX, 1 + rabbitStartY);
  vertex(27 + rabbitStartX, 8 + rabbitStartY);
  vertex(28 + rabbitStartX, 31 + rabbitStartY);
  vertex(23 + rabbitStartX, 38 + rabbitStartY);
  vertex(16 + rabbitStartX, 36 + rabbitStartY);
  vertex(13 + rabbitStartX, 34 + rabbitStartY);
  vertex(12 + rabbitStartX, 27 + rabbitStartY);
  vertex(11 + rabbitStartX, 16 + rabbitStartY);
  vertex(8 + rabbitStartX, 17 + rabbitStartY);
  vertex(4 + rabbitStartX, 19 + rabbitStartY);
  endShape(CLOSE);
  fill(214 - colorChange, 155- colorChange, 133- colorChange);
  beginShape();
  vertex(13 + rabbitStartX, 13 + rabbitStartY);
  vertex(16 + rabbitStartX, 10 + rabbitStartY);
  vertex(19 + rabbitStartX, 9 + rabbitStartY);
  vertex(22 + rabbitStartX, 12 + rabbitStartY);
  vertex(23 + rabbitStartX, 22 + rabbitStartY);
  vertex(24 + rabbitStartX, 33 + rabbitStartY);
  vertex(22 + rabbitStartX, 34 + rabbitStartY);
  vertex(19 + rabbitStartX, 35 + rabbitStartY);
  vertex(17 + rabbitStartX, 34 + rabbitStartY);
  vertex(15 + rabbitStartX, 30 + rabbitStartY);
  vertex(15 + rabbitStartX, 21 + rabbitStartY);
  vertex(14 + rabbitStartX, 16 + rabbitStartY);
  endShape(CLOSE);

  //right ear
  fill(255 - colorChange, 255 - colorChange, 255 - colorChange);
  beginShape();
  vertex(35 + rabbitStartX, 36 + rabbitStartY);
  vertex(37 + rabbitStartX, 30 + rabbitStartY);
  vertex(39 + rabbitStartX, 26 + rabbitStartY);
  vertex(44 + rabbitStartX, 22 + rabbitStartY);
  vertex(55 + rabbitStartX, 20 + rabbitStartY);
  vertex(76 + rabbitStartX, 22 + rabbitStartY);
  vertex(75 + rabbitStartX, 26 + rabbitStartY);
  vertex(67 + rabbitStartX, 33 + rabbitStartY);
  vertex(66 + rabbitStartX, 34 + rabbitStartY);
  vertex(59 + rabbitStartX, 35 + rabbitStartY);
  vertex(51 + rabbitStartX, 37 + rabbitStartY);
  vertex(49 + rabbitStartX, 38 + rabbitStartY);
  vertex(45 + rabbitStartX, 40 + rabbitStartY);
  vertex(39 + rabbitStartX, 41 + rabbitStartY);
  endShape(CLOSE);
  fill(214 - colorChange, 155- colorChange, 133- colorChange);
  beginShape();
  vertex(39 + rabbitStartX, 35 + rabbitStartY);
  vertex(43 + rabbitStartX, 32 + rabbitStartY);
  vertex(48 + rabbitStartX, 29 + rabbitStartY);
  vertex(56 + rabbitStartX, 26 + rabbitStartY);
  vertex(59 + rabbitStartX, 24 + rabbitStartY);
  vertex(69 + rabbitStartX, 24 + rabbitStartY);
  vertex(68 + rabbitStartX, 27 + rabbitStartY);
  vertex(64 + rabbitStartX, 30 + rabbitStartY);
  vertex(60 + rabbitStartX, 32 + rabbitStartY);
  vertex(55 + rabbitStartX, 32 + rabbitStartY);
  vertex(51 + rabbitStartX, 34 + rabbitStartY);
  vertex(47 + rabbitStartX, 35 + rabbitStartY);
  vertex(44 + rabbitStartX, 36 + rabbitStartY);
  vertex(41 + rabbitStartX, 37 + rabbitStartY);
  endShape(CLOSE);

  if (rabbitInGame) {
    //back legs
    fill(255);
    beginShape();
    vertex(10 + rabbitStartX, 103 + rabbitStartY);
    vertex(7 + rabbitStartX, 110 + rabbitStartY);
    vertex(2 + rabbitStartX, 114 + rabbitStartY);
    vertex(3 + rabbitStartX, 118 + rabbitStartY);
    vertex(5 + rabbitStartX, 119 + rabbitStartY);
    vertex(2 + rabbitStartX, 123 + rabbitStartY);
    vertex(1 + rabbitStartX, 126 + rabbitStartY);
    vertex(4 + rabbitStartX, 127 + rabbitStartY);
    vertex(10 + rabbitStartX, 124 + rabbitStartY);
    vertex(15 + rabbitStartX, 118 + rabbitStartY);
    vertex(17 + rabbitStartX, 116 + rabbitStartY);
    endShape(CLOSE);
    beginShape();
    vertex(45 + rabbitStartX, 111 + rabbitStartY);
    vertex(50 + rabbitStartX, 113 + rabbitStartY);
    vertex(54 + rabbitStartX, 115 + rabbitStartY);
    vertex(55 + rabbitStartX, 120 + rabbitStartY);
    vertex(53 + rabbitStartX, 122 + rabbitStartY);
    vertex(48 + rabbitStartX, 122 + rabbitStartY);
    vertex(49 + rabbitStartX, 125 + rabbitStartY);
    vertex(48 + rabbitStartX, 126 + rabbitStartY);
    vertex(44 + rabbitStartX, 125 + rabbitStartY);
    vertex(39 + rabbitStartX, 123 + rabbitStartY);
    vertex(37 + rabbitStartX, 120 + rabbitStartY);
    vertex(35 + rabbitStartX, 118 + rabbitStartY);
    endShape(CLOSE);
  }

  //body
  fill(255 - colorChange, 255 - colorChange, 255 - colorChange);
  beginShape();
  vertex(10 + rabbitStartX, 78 + rabbitStartY);
  vertex(8 + rabbitStartX, 82 + rabbitStartY);
  vertex(7 + rabbitStartX, 87 + rabbitStartY);
  vertex(6 + rabbitStartX, 88 + rabbitStartY);
  vertex(7 + rabbitStartX, 95 + rabbitStartY);
  if (rabbitInGame) { 
    vertex(8 + rabbitStartX, 101 + rabbitStartY);
    vertex(11 + rabbitStartX, 107 + rabbitStartY);
    vertex(15 + rabbitStartX, 114 + rabbitStartY);
    vertex(21 + rabbitStartX, 120 + rabbitStartY);
    vertex(24 + rabbitStartX, 121 + rabbitStartY);
    vertex(33 + rabbitStartX, 121 + rabbitStartY);
    vertex(38 + rabbitStartX, 120 + rabbitStartY);
    vertex(42 + rabbitStartX, 116 + rabbitStartY);
    vertex(45 + rabbitStartX, 112 + rabbitStartY);
    vertex(46 + rabbitStartX, 107 + rabbitStartY);
    vertex(48 + rabbitStartX, 101 + rabbitStartY);
  }
  vertex(51 + rabbitStartX, 95 + rabbitStartY);
  vertex(50 + rabbitStartX, 90 + rabbitStartY);
  vertex(49 + rabbitStartX, 84 + rabbitStartY);
  vertex(46 + rabbitStartX, 76 + rabbitStartY);
  vertex(45 + rabbitStartX, 72 + rabbitStartY);
  endShape(CLOSE);

  //front legs
  beginShape();
  vertex(13 + rabbitStartX, 97 + rabbitStartY);
  vertex(11 + rabbitStartX, 98 + rabbitStartY);
  vertex(9 + rabbitStartX, 96 + rabbitStartY);
  vertex(10 + rabbitStartX, 91 + rabbitStartY);
  vertex(14 + rabbitStartX, 88 + rabbitStartY);
  vertex(18 + rabbitStartX, 88 + rabbitStartY);
  vertex(19 + rabbitStartX, 89 + rabbitStartY);
  vertex(21 + rabbitStartX, 90 + rabbitStartY);
  vertex(22 + rabbitStartX, 93 + rabbitStartY);
  vertex(23 + rabbitStartX, 96 + rabbitStartY);
  vertex(20 + rabbitStartX, 98 + rabbitStartY);
  vertex(18 + rabbitStartX, 98 + rabbitStartY);
  vertex(17 + rabbitStartX, 96 + rabbitStartY);
  vertex(18 + rabbitStartX, 99 + rabbitStartY);
  vertex(14 + rabbitStartX, 99 + rabbitStartY);
  endShape(CLOSE);
  beginShape();
  vertex(43 + rabbitStartX, 97 + rabbitStartY);
  vertex(41 + rabbitStartX, 98 + rabbitStartY);
  vertex(39 + rabbitStartX, 96 + rabbitStartY);
  vertex(40 + rabbitStartX, 91 + rabbitStartY);
  vertex(44 + rabbitStartX, 88 + rabbitStartY);
  vertex(48 + rabbitStartX, 88 + rabbitStartY);
  vertex(49 + rabbitStartX, 89 + rabbitStartY);
  vertex(51 + rabbitStartX, 90 + rabbitStartY);
  vertex(52 + rabbitStartX, 93 + rabbitStartY);
  vertex(53 + rabbitStartX, 96 + rabbitStartY);
  vertex(50 + rabbitStartX, 98 + rabbitStartY);
  vertex(48 + rabbitStartX, 98 + rabbitStartY);
  vertex(47 + rabbitStartX, 96 + rabbitStartY);
  vertex(48 + rabbitStartX, 99 + rabbitStartY);
  vertex(44 + rabbitStartX, 99 + rabbitStartY);
  endShape(CLOSE);

  //head
  fill(255 - colorChange, 255 - colorChange, 255 - colorChange);
  beginShape();
  vertex(16 + rabbitStartX, 38 + rabbitStartY);
  vertex(13 + rabbitStartX, 41 + rabbitStartY);
  vertex(10 + rabbitStartX, 45 + rabbitStartY);
  vertex(10 + rabbitStartX, 51 + rabbitStartY);
  vertex(8 + rabbitStartX, 53 + rabbitStartY);
  vertex(6 + rabbitStartX, 55 + rabbitStartY);
  vertex(2 + rabbitStartX, 59 + rabbitStartY);
  vertex(2 + rabbitStartX, 65 + rabbitStartY);
  vertex(3 + rabbitStartX, 69 + rabbitStartY);
  vertex(5 + rabbitStartX, 73 + rabbitStartY);
  vertex(10 + rabbitStartX, 77 + rabbitStartY);
  vertex(15 + rabbitStartX, 79 + rabbitStartY);
  vertex(24 + rabbitStartX, 81 + rabbitStartY);
  vertex(31 + rabbitStartX, 80 + rabbitStartY);
  vertex(34 + rabbitStartX, 79 + rabbitStartY);
  vertex(38 + rabbitStartX, 77 + rabbitStartY);
  vertex(45 + rabbitStartX, 73 + rabbitStartY);
  vertex(47 + rabbitStartX, 71 + rabbitStartY);
  vertex(49 + rabbitStartX, 63 + rabbitStartY);
  vertex(49 + rabbitStartX, 52 + rabbitStartY);
  vertex(48 + rabbitStartX, 47 + rabbitStartY);
  vertex(46 + rabbitStartX, 41 + rabbitStartY);
  vertex(39 + rabbitStartX, 37 + rabbitStartY);
  vertex(36 + rabbitStartX, 35 + rabbitStartY);
  vertex(32 + rabbitStartX, 34 + rabbitStartY);
  vertex(26 + rabbitStartX, 33 + rabbitStartY);
  endShape(CLOSE);

  //eyes
  fill(0);
  ellipse(12 + rabbitStartX, 48 + rabbitStartY, 6, 6);
  ellipse(34 + rabbitStartX, 55 + rabbitStartY, 8, 10);

  //nose
  beginShape();
  vertex(9 + rabbitStartX, 65 + rabbitStartY);
  vertex(10 + rabbitStartX, 67 + rabbitStartY);
  vertex(12 + rabbitStartX, 69 + rabbitStartY);
  vertex(17 + rabbitStartX, 64 + rabbitStartY);
  vertex(12 + rabbitStartX, 69 + rabbitStartY);
  vertex(12 + rabbitStartX, 71 + rabbitStartY);
  vertex(13 + rabbitStartX, 72 + rabbitStartY);
  vertex(14 + rabbitStartX, 73 + rabbitStartY);
  vertex(16 + rabbitStartX, 74 + rabbitStartY);
  endShape();
}

//draw dog
void drawDog() {
  fill(171, 120, 58); //brown
  strokeWeight(0);

  //body
  beginShape();
  vertex(dogStartX, 73 + dogStartY);
  vertex(2 + dogStartX, 70 + dogStartY);
  vertex(4 + dogStartX, 69 + dogStartY);
  vertex(9 + dogStartX, 66 + dogStartY);
  vertex(13 + dogStartX, 63 + dogStartY);
  vertex(16 + dogStartX, 61 + dogStartY);
  vertex(18 + dogStartX, 62 + dogStartY);
  vertex(23 + dogStartX, 61 + dogStartY);
  vertex(25 + dogStartX, 60 + dogStartY);
  vertex(28 + dogStartX, 59 + dogStartY);
  vertex(34 + dogStartX, 58 + dogStartY);
  vertex(44 + dogStartX, 56 + dogStartY);
  vertex(50 + dogStartX, 55 + dogStartY);
  vertex(55 + dogStartX, 52 + dogStartY);
  vertex(58 + dogStartX, 49 + dogStartY);
  vertex(62 + dogStartX, 44 + dogStartY);
  vertex(66 + dogStartX, 40 + dogStartY);
  vertex(71 + dogStartX, 33 + dogStartY);
  vertex(79 + dogStartX, 23 + dogStartY);
  vertex(85 + dogStartX, 18 + dogStartY);
  vertex(91 + dogStartX, 14 + dogStartY);
  vertex(95 + dogStartX, 12 + dogStartY);
  vertex(104 + dogStartX, 5 + dogStartY);
  vertex(108 + dogStartX, 2 + dogStartY);
  vertex(113 + dogStartX, dogStartY);
  vertex(122 + dogStartX, 4 + dogStartY);
  vertex(123 + dogStartX, 9 + dogStartY);
  vertex(118 + dogStartX, 15 + dogStartY);
  vertex(112 + dogStartX, 19 + dogStartY);
  vertex(109 + dogStartX, 22 + dogStartY);
  vertex(104 + dogStartX, 23 + dogStartY);
  vertex(97 + dogStartX, 26 + dogStartY);
  vertex(92 + dogStartX, 26 + dogStartY);
  vertex(86 + dogStartX, 28 + dogStartY);
  vertex(85 + dogStartX, 31 + dogStartY);
  vertex(91 + dogStartX, 32 + dogStartY);
  vertex(95 + dogStartX, 35 + dogStartY);
  vertex(98 + dogStartX, 35 + dogStartY);
  vertex(100 + dogStartX, 37 + dogStartY);
  vertex(106 + dogStartX, 31 + dogStartY);
  vertex(110 + dogStartX, 29 + dogStartY);
  vertex(117 + dogStartX, 29 + dogStartY);
  vertex(121 + dogStartX, 24 + dogStartY);
  vertex(130 + dogStartX, 22 + dogStartY);
  vertex(134 + dogStartX, 19 + dogStartY);
  vertex(142 + dogStartX, 17 + dogStartY);
  vertex(150 + dogStartX, 16 + dogStartY);
  vertex(155 + dogStartX, 23 + dogStartY);
  vertex(152 + dogStartX, 29 + dogStartY);
  vertex(143 + dogStartX, 34 + dogStartY);
  vertex(131 + dogStartX, 36 + dogStartY);
  vertex(126 + dogStartX, 37 + dogStartY);
  vertex(116 + dogStartX, 37 + dogStartY);
  vertex(110 + dogStartX, 38 + dogStartY);
  vertex(104 + dogStartX, 42 + dogStartY);
  vertex(105 + dogStartX, 49 + dogStartY);
  vertex(108 + dogStartX, 63 + dogStartY);
  vertex(109 + dogStartX, 75 + dogStartY);
  vertex(114 + dogStartX, 86 + dogStartY);
  vertex(123 + dogStartX, 94 + dogStartY);
  vertex(131 + dogStartX, 98 + dogStartY);
  vertex(140 + dogStartX, 103 + dogStartY);
  vertex(152 + dogStartX, 104 + dogStartY);
  vertex(173 + dogStartX, 101 + dogStartY);
  vertex(192 + dogStartX, 96 + dogStartY);
  vertex(203 + dogStartX, 94 + dogStartY);
  vertex(210 + dogStartX, 93 + dogStartY);
  vertex(216 + dogStartX, 96 + dogStartY);
  vertex(222 + dogStartX, 99 + dogStartY);
  vertex(229 + dogStartX, 95 + dogStartY);
  vertex(237 + dogStartX, 90 + dogStartY);
  vertex(246 + dogStartX, 82 + dogStartY);
  vertex(251 + dogStartX, 72 + dogStartY);
  vertex(255 + dogStartX, 63 + dogStartY);
  vertex(260 + dogStartX, 55 + dogStartY);
  vertex(265 + dogStartX, 50 + dogStartY);
  vertex(271 + dogStartX, 54 + dogStartY);
  vertex(272 + dogStartX, 58 + dogStartY);
  vertex(273 + dogStartX, 69 + dogStartY);
  vertex(270 + dogStartX, 77 + dogStartY);
  vertex(267 + dogStartX, 83 + dogStartY);
  vertex(259 + dogStartX, 93 + dogStartY);
  vertex(246 + dogStartX, 101 + dogStartY);
  vertex(224 + dogStartX, 104 + dogStartY);
  vertex(226 + dogStartX, 110 + dogStartY);
  vertex(227 + dogStartX, 114 + dogStartY);
  vertex(228 + dogStartX, 121 + dogStartY);
  vertex(237 + dogStartX, 123 + dogStartY);
  vertex(243 + dogStartX, 127 + dogStartY);
  vertex(251 + dogStartX, 132 + dogStartY);
  vertex(253 + dogStartX, 135 + dogStartY);
  vertex(264 + dogStartX, 147 + dogStartY);
  vertex(272 + dogStartX, 157 + dogStartY);
  vertex(275 + dogStartX, 162 + dogStartY);
  vertex(276 + dogStartX, 166 + dogStartY);
  vertex(273 + dogStartX, 171 + dogStartY);
  vertex(269 + dogStartX, 175 + dogStartY);
  vertex(261 + dogStartX, 176 + dogStartY);
  vertex(259 + dogStartX, 174 + dogStartY);
  vertex(251 + dogStartX, 157 + dogStartY);
  vertex(245 + dogStartX, 152 + dogStartY);
  vertex(238 + dogStartX, 152 + dogStartY);
  vertex(223 + dogStartX, 155 + dogStartY);
  vertex(230 + dogStartX, 165 + dogStartY);
  vertex(237 + dogStartX, 176 + dogStartY);
  vertex(237 + dogStartX, 179 + dogStartY);
  vertex(228 + dogStartX, 190 + dogStartY);
  vertex(225 + dogStartX, 189 + dogStartY);
  vertex(225 + dogStartX, 180 + dogStartY);
  vertex(213 + dogStartX, 167 + dogStartY);
  vertex(206 + dogStartX, 167 + dogStartY);
  vertex(190 + dogStartX, 166 + dogStartY);
  vertex(177 + dogStartX, 164 + dogStartY);
  vertex(164 + dogStartX, 164 + dogStartY);
  vertex(137 + dogStartX, 161 + dogStartY);
  vertex(135 + dogStartX, 170 + dogStartY);
  vertex(132 + dogStartX, 173 + dogStartY);
  vertex(121 + dogStartX, 179 + dogStartY);
  vertex(99 + dogStartX, 191 + dogStartY);
  vertex(81 + dogStartX, 189 + dogStartY);
  vertex(79 + dogStartX, 187 + dogStartY);
  vertex(78 + dogStartX, 186 + dogStartY);
  vertex(81 + dogStartX, 182 + dogStartY);
  vertex(95 + dogStartX, 180 + dogStartY);
  vertex(114 + dogStartX, 159 + dogStartY);
  vertex(110 + dogStartX, 156 + dogStartY);
  vertex(75 + dogStartX, 177 + dogStartY);
  vertex(56 + dogStartX, 176 + dogStartY);
  vertex(53 + dogStartX, 172 + dogStartY);
  vertex(55 + dogStartX, 168 + dogStartY);
  vertex(70 + dogStartX, 167 + dogStartY);
  vertex(96 + dogStartX, 146 + dogStartY);
  vertex(95 + dogStartX, 137 + dogStartY);
  vertex(92 + dogStartX, 130 + dogStartY);
  vertex(87 + dogStartX, 123 + dogStartY);
  vertex(84 + dogStartX, 114 + dogStartY);
  vertex(73 + dogStartX, 110 + dogStartY);
  vertex(56 + dogStartX, 117 + dogStartY);
  vertex(34 + dogStartX, 118 + dogStartY);
  vertex(27 + dogStartX, 116 + dogStartY);
  vertex(21 + dogStartX, 112 + dogStartY);
  vertex(13 + dogStartX, 111 + dogStartY);
  vertex(6 + dogStartX, 105 + dogStartY);
  vertex(3 + dogStartX, 100 + dogStartY);
  vertex(dogStartX, 91 + dogStartY);
  endShape(CLOSE);

  //nose
  fill(99, 63, 15);
  beginShape();
  vertex(10 + dogStartX, 75 + dogStartY);
  vertex(27 + dogStartX, 75 + dogStartY);
  vertex(39 + dogStartX, 76 + dogStartY);
  vertex(51 + dogStartX, 80 + dogStartY);
  vertex(52 + dogStartX, 81 + dogStartY);
  vertex(50 + dogStartX, 84 + dogStartY);
  vertex(40 + dogStartX, 91 + dogStartY);
  vertex(32 + dogStartX, 96 + dogStartY);
  vertex(28 + dogStartX, 96 + dogStartY);
  vertex(23 + dogStartX, 95 + dogStartY);
  vertex(21 + dogStartX, 92 + dogStartY);
  vertex(10 + dogStartX, 80 + dogStartY);
  endShape(CLOSE);
  fill(51, 36, 18);
  beginShape();
  vertex(12 + dogStartX, 83 + dogStartY);
  vertex(15 + dogStartX, 81 + dogStartY);
  vertex(18 + dogStartX, 83 + dogStartY);
  vertex(19 + dogStartX, 89 + dogStartY);
  endShape(CLOSE);
  beginShape();
  vertex(36 + dogStartX, 92 + dogStartY);
  vertex(37 + dogStartX, 88 + dogStartY);
  vertex(39 + dogStartX, 87 + dogStartY);
  vertex(46 + dogStartX, 87 + dogStartY);
  vertex(42 + dogStartX, 90 + dogStartY);
  endShape(CLOSE);

  //eyes
  fill(0);
  ellipse(67 + dogStartX, 51 + dogStartY, 10, 10);
  ellipse(86 + dogStartX, 57 + dogStartY, 10, 10);

  //collar
  fill(173, 37, 35);
  beginShape();
  vertex(122 + dogStartX, 91 + dogStartY);
  vertex(127 + dogStartX, 97 + dogStartY);
  vertex(133 + dogStartX, 101 + dogStartY);
  vertex(127 + dogStartX, 112 + dogStartY);
  vertex(119 + dogStartX, 119 + dogStartY);
  vertex(93 + dogStartX, 132 + dogStartY);
  vertex(86 + dogStartX, 122 + dogStartY);
  vertex(98 + dogStartX, 117 + dogStartY);
  vertex(111 + dogStartX, 109 + dogStartY);
  vertex(115 + dogStartX, 102 + dogStartY);
  endShape(CLOSE);
}

//main menu
void mainMenuScreen() {
  //reset game if back here
  dogCompleted = false;
  catCompleted = false;
  pigCompleted = false;
  foxCompleted = false;
  pandaCompleted = false;
  rabbitCompleted = false;

  gameStartTime = 0;
  gameDuration = 0;
  gameOver = false;

  scoreInDogGame = 0;
  scoreInPigGame = 0;
  scoreInCatGame = 0;
  scoreInFoxGame = 0;
  scoreInPandaGame = 0;

  //title  
  fill(255);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("Main Menu", width/2, 50);

  //instructions button
  fill(25, 181, 67);
  rect(insButtonLeft, insButtonTop, insButtonRight, insButtonBottom);
  fill(0);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("Instructions", (insButtonLeft + insButtonRight)/2, (insButtonTop + insButtonBottom)/2);  

  //maze button
  fill(25, 181, 67);
  rect(mazeButtonLeft, mazeButtonTop, mazeButtonRight, mazeButtonBottom);
  fill(0);
  textSize(25);
  textAlign(CENTER, CENTER);
  text("Maze of Learning", (mazeButtonLeft + mazeButtonRight)/2, (mazeButtonTop + mazeButtonBottom)/2);

  navButtonPrompt = "Good-bye";
  drawNavButton();

  if (insButtonClicked) {
    insButtonClicked = false;
    nextScreen = 3;  //goto instructionsScreen
  } else if (mazeButtonClicked) {
    mazeButtonClicked = false;
    nextScreen = 4;  //goto mazeOfLearningScreen
  } else if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen = 19;  //goto goodByeScreen
  }
}

//instructions screen
void instructionsScreen()
{
  fill(255);
  textAlign(LEFT, TOP);
  textSize(50);
  text("INSTRUCTIONS", 20, 50);
  textSize(20);
  text("USE THE LEFT, RIGHT, UP, AND DOWN BUTTONS TO MOVE THE BALL IN THE", 20, 150);
  text("MAZE", 20, 200);
  text("HIT ALL OF THE ANIMALS AND THEN GO TO THE TEST", 20, 250);
  text("ONCE YOU HIT ONE OF THE ANIMALS, YOU WILL LEARN SOMETHING ABOUT IT", 20, 300);
  text("YOU WIN THE GAME IF YOU PASS THE TEST", 20, 350);
  text("HAVE FUN", 20, 400);

  navButtonPrompt = "Main menu";
  drawNavButton();
  if (navButtonClicked)
  {
    navButtonClicked = false;
    nextScreen = 2;  //goto mainMenuScreen
  }
}

//maze screen
void mazeOfLearningScreen() {
  gameDuration = 0;
  gameOver = false;
  playButtonClicked = false;

  navButtonPrompt = "Main menu";
  drawNavButton();
  if (navButtonClicked)
  {
    navButtonClicked = false;
    nextScreen = 2;  //goto mainMenuScreen
  }

  //maze
  stroke(0);
  strokeWeight(10);
  line(20, 77, 20, 437);
  line(20, 437, 780, 437);
  line(780, 437, 780, 367);
  line(20, 210, 112, 210);
  line(20, 335, 112, 335);
  line(320, 437, 320, 290);
  line(320, 290, 430, 290);
  line(430, 290, 430, 360);
  line(20, 10, 780, 10);
  line(780, 10, 780, 290);
  line(780, 290, 540, 290);
  line(540, 290, 540, 360);
  line(540, 360, 650, 360);
  line(112, 10, 112, 140);
  line(112, 140, 210, 140);
  line(112, 270, 210, 270);
  line(210, 85, 210, 335);
  line(320, 10, 320, 210);
  line(320, 210, 430, 210);
  line(320, 85, 430, 85);
  line(430, 85, 430, 140);
  line(430, 140, 540, 140);
  line(540, 140, 540, 210);
  line(540, 10, 540, 85);
  line(540, 85, 650, 85);
  line(650, 85, 650, 210);

  //ball
  fill(255, 0, 0);
  noStroke();
  circle(ballX, ballY, 25);

  //DOG
  if (!dogCompleted) {
    fill(204, 202, 207);
    ellipse(36 + dogXMin, 30 + dogYMin, 50, 55);

    fill(0);
    beginShape();
    vertex(24 + dogXMin, 4 + dogYMin);
    vertex(16 + dogXMin, 8 + dogYMin);
    vertex(9 + dogXMin, 12 + dogYMin);
    vertex(4 + dogXMin, 20 + dogYMin);
    vertex(dogXMin, 30 + dogYMin);
    vertex(1 + dogXMin, 36 + dogYMin);
    vertex(6 + dogXMin, 43 + dogYMin);
    vertex(16 + dogXMin, 34 + dogYMin);
    vertex(19 + dogXMin, 22 + dogYMin);
    vertex(23 + dogXMin, 14 + dogYMin);
    endShape(CLOSE);

    beginShape();
    vertex(42 + dogXMin, dogYMin);
    vertex(56 + dogXMin, 10 + dogYMin);
    vertex(63 + dogXMin, 15 + dogYMin);
    vertex(68 + dogXMin, 21 + dogYMin);
    vertex(70 + dogXMin, 23 + dogYMin);
    vertex(71 + dogXMin, 28 + dogYMin);
    vertex(70 + dogXMin, 41 + dogYMin);
    vertex(63 + dogXMin, 44 + dogYMin);
    vertex(58 + dogXMin, 42 + dogYMin);
    vertex(54 + dogXMin, 31 + dogYMin);
    vertex(49 + dogXMin, 18 + dogYMin);
    endShape(CLOSE);

    //dog eyes and nose
    ellipse(20 + dogXMin, 33 + dogYMin, 5, 5);
    ellipse(44 + dogXMin, 33 + dogYMin, 5, 5);
    triangle(26 + dogXMin, 41 + dogYMin, 36 + dogXMin, 41 + dogYMin, 31 + dogXMin, 45 + dogYMin);
  }

  //CAT
  if (!catCompleted) {
    fill(125, 124, 121); //grey
    ellipse(30 + catXMin, 44 + catYMin, 65, 55);

    //cat ears 
    beginShape();
    vertex(3 + catXMin, 32 + catYMin);
    vertex(catXMin, 12 + catYMin);
    vertex(2 + catXMin, catYMin);
    vertex(13 + catXMin, 3 + catYMin);
    vertex(18 + catXMin, 7 + catYMin);
    vertex(24 + catXMin, 19 + catYMin);
    endShape(CLOSE);

    beginShape();
    vertex(59 + catXMin, 32 + catYMin);
    vertex(61 + catXMin, 12 + catYMin);
    vertex(58 + catXMin, catYMin);
    vertex(50 + catXMin, 2 + catYMin);
    vertex(43 + catXMin, 8 + catYMin);
    vertex(37 + catXMin, 18 + catYMin);
    endShape(CLOSE);

    //cat eyes
    fill(130, 194, 147);
    ellipse(14 + catXMin, 42 + catYMin, 10, 8);
    ellipse(44 + catXMin, 42 + catYMin, 10, 8);

    //cat nose
    fill(224, 146, 203);
    ellipse(27 + catXMin, 56 + catYMin, 8, 6);
  }

  //PIG
  if (!pigCompleted) {
    fill(219, 101, 205); //pink
    ellipse(38 + pigXMin, 39 + pigYMin, 50, 50);

    //pig ears 
    beginShape();
    vertex(25 + pigXMin, 18 + pigYMin);
    vertex(16 + pigXMin, 4 + pigYMin);
    vertex(7 + pigXMin, pigYMin);
    vertex(1 + pigXMin, 5 + pigYMin);
    vertex(pigXMin, 16 + pigYMin);
    vertex(1 + pigXMin, 32 + pigYMin);
    vertex(12 + pigXMin, 42 + pigYMin);
    endShape(CLOSE);

    beginShape();
    vertex(52 + pigXMin, 20 + pigYMin);
    vertex(62 + pigXMin, 4 + pigYMin);
    vertex(70 + pigXMin, pigYMin);
    vertex(78 + pigXMin, 18 + pigYMin);
    vertex(80 + pigXMin, 25 + pigYMin);
    vertex(76 + pigXMin, 32 + pigYMin);
    vertex(62 + pigXMin, 44 + pigYMin);
    endShape(CLOSE);

    //pig eyes
    fill(0);
    ellipse(30 + pigXMin, 34 + pigYMin, 5, 5);
    ellipse(50 + pigXMin, 34 + pigYMin, 5, 5);

    //nose
    ellipse(38 + pigXMin, 47 + pigYMin, 5, 5);
    ellipse(42 + pigXMin, 47 + pigYMin, 5, 5);
  }

  //FOX
  if (!foxCompleted) {
    //fox ears
    fill(232, 86, 42);
    beginShape();
    vertex(366, 143);
    vertex(358, 136);
    vertex(351, 140);
    vertex(348, 149);
    vertex(348, 172);
    vertex(409, 172);
    vertex(409, 149);
    vertex(405, 139);
    vertex(394, 135);
    vertex(390, 137);
    vertex(388, 143);
    vertex(388, 157);
    vertex(368, 157);
    endShape(CLOSE);

    //fox face
    fill(232, 153, 88);
    beginShape();
    vertex(348, 172);
    vertex(338, 183);
    vertex(378, 200);
    vertex(419, 183);
    vertex(409, 172);
    endShape(CLOSE);

    //fox eyes and nose
    fill(0);
    ellipse(362, 180, 5, 10);
    ellipse(392, 180, 5, 10);
    ellipse(378, 200, 4, 4);

    fill(232, 86, 42);
    rect(376, 172, 380, 198);
  }

  //PANDA
  if (!pandaCompleted) {
    //panda ears
    fill(0);
    ellipse(10 + pandaXMin, 10 + pandaYMin, 25, 25);
    ellipse(60 + pandaXMin, 10 + pandaYMin, 25, 25);

    //panda face
    fill(255);
    ellipse(36 + pandaXMin, 30 + pandaYMin, 55, 55);

    //panda eyes
    fill(0);
    ellipse(22 + pandaXMin, 26 + pandaYMin, 15, 15);
    ellipse(48 + pandaXMin, 26 + pandaYMin, 15, 15);
    fill(255);
    ellipse(23 + pandaXMin, 25 + pandaYMin, 5, 5);
    ellipse(46 + pandaXMin, 25 + pandaYMin, 5, 5);

    //panda nose
    fill(0);
    ellipse(35 + pandaXMin, 42 + pandaYMin, 8, 8);
  }

  //RABBIT
  if (!rabbitCompleted) {
    //rabbit ears
    fill(255);
    beginShape();
    vertex(481, 75);
    vertex(479, 60);
    vertex(475, 47);
    vertex(469, 31);
    vertex(464, 25);
    vertex(461, 33);
    vertex(460, 44);
    vertex(463, 61);
    vertex(469, 73);
    vertex(473, 80);
    endShape(CLOSE);
    beginShape();
    vertex(488, 75);
    vertex(489, 62);
    vertex(493, 50);
    vertex(499, 34);
    vertex(505, 25);
    vertex(509, 32);
    vertex(509, 51);
    vertex(507, 59);
    vertex(501, 73);
    vertex(497, 79);
    endShape(CLOSE);

    fill(247, 157, 87);
    beginShape();
    vertex(479, 73);
    vertex(475, 55);
    vertex(467, 39);
    vertex(464, 49);
    vertex(467, 61);
    vertex(474, 77);
    endShape(CLOSE);
    beginShape();
    vertex(491, 75);
    vertex(493, 60);
    vertex(497, 47);
    vertex(502, 39);
    vertex(505, 51);
    vertex(496, 76);
    endShape(CLOSE);

    //head
    fill(255);
    ellipse(483, 92, 50, 40);

    //eyes
    fill(0);
    ellipse(473, 90, 6, 6);
    ellipse(495, 90, 6, 6);

    //nose and mouth
    fill(212, 122, 51);
    ellipse(485, 98, 6, 6);

    stroke(0);
    strokeWeight(2);
    line(485, 100, 485, 105);
    line(482, 105, 488, 105);
  }

  //drawing "TEST"
  fill(199, 32, 116);
  textAlign(LEFT, TOP);
  textSize(40);
  strokeWeight(5);
  text("TEST", testX, testY);
  strokeWeight(1);
}

//check where the ball can move
void checkballMoveDirection()
{
  canMoveUp = false;
  canMoveDown = false;
  canMoveLeft = false;
  canMoveRight = false;

  if (
    // col 1
    ((ballX >= 40  && ballX <= 92)  && (ballY >= 30  && ballY <= 190 )) ||
    ((ballX >= 40  && ballX <= 92)  && (ballY >= 230 && ballY <= 315 )) ||
    ((ballX >= 40  && ballX <= 92)  && (ballY >= 355 && ballY <= 417 )) ||
    // col 2
    ((ballX >= 132 && ballX <= 190) && (ballY >= 30  && ballY <= 120 )) ||
    ((ballX >= 132 && ballX <= 190) && (ballY >= 160 && ballY <= 250 )) ||
    ((ballX >= 132 && ballX <= 190) && (ballY >= 290 && ballY <= 417 )) ||
    // col 3
    ((ballX >= 230 && ballX <= 300) && (ballY >= 30  && ballY <= 417 )) ||
    // col 4
    ((ballX >= 340 && ballX <= 410) && (ballY >= 30  && ballY <= 65  )) ||
    ((ballX >= 340 && ballX <= 410) && (ballY >= 105 && ballY <= 190 )) ||
    ((ballX >= 340 && ballX <= 410) && (ballY >= 230 && ballY <= 270 )) ||
    ((ballX >= 340 && ballX <= 410) && (ballY >= 310 && ballY <= 417 )) ||
    // col 5
    ((ballX >= 450 && ballX <= 520) && (ballY >= 30  && ballY <= 120 )) ||
    ((ballX >= 450 && ballX <= 520) && (ballY >= 160 && ballY <= 417 )) ||
    // col 6
    ((ballX >= 560 && ballX <= 630) && (ballY >= 30  && ballY <= 65  )) ||
    ((ballX >= 560 && ballX <= 630) && (ballY >= 105 && ballY <= 270 )) ||
    ((ballX >= 560 && ballX <= 630) && (ballY >= 310 && ballY <= 340 )) ||
    ((ballX >= 560 && ballX <= 630) && (ballY >= 380 && ballY <= 417 )) ||
    // col 7
    ((ballX >= 670 && ballX <= 760) && (ballY >= 30  && ballY <= 270 )) ||
    ((ballX >= 670 && ballX <= 760) && (ballY >= 310 && ballY <= 417 )) ||
    // row 1    
    ((ballY >= 30 && ballY <= 57)  && (ballX >= 40  && ballX <= 92  )) ||
    ((ballY >= 30 && ballY <= 65)  && (ballX >= 132 && ballX <= 300 )) ||
    ((ballY >= 30 && ballY <= 65)  && (ballX >= 340 && ballX <= 520 )) ||
    ((ballY >= 30 && ballY <= 65)  && (ballX >= 560 && ballX <= 760 )) ||
    // row 2
    ((ballY >= 105 && ballY <= 120)&& (ballX >= 40  && ballX <= 92  )) ||
    ((ballY >= 105 && ballY <= 120)&& (ballX >= 132 && ballX <= 190 )) ||
    ((ballY >= 105 && ballY <= 120)&& (ballX >= 230 && ballX <= 300 )) ||
    ((ballY >= 105 && ballY <= 120)&& (ballX >= 340 && ballX <= 410 )) ||
    ((ballY >= 105 && ballY <= 120)&& (ballX >= 450 && ballX <= 630 )) ||
    ((ballY >= 105 && ballY <= 120)&& (ballX >= 670 && ballX <= 760 )) ||
    // row 3
    ((ballY >= 160 && ballY <= 190)&& (ballX >= 40  && ballX <= 190 )) ||
    ((ballY >= 160 && ballY <= 190)&& (ballX >= 230 && ballX <= 300 )) ||
    ((ballY >= 160 && ballY <= 190)&& (ballX >= 340 && ballX <= 520 )) ||
    ((ballY >= 160 && ballY <= 190)&& (ballX >= 560 && ballX <= 630 )) ||
    ((ballY >= 160 && ballY <= 190)&& (ballX >= 670 && ballX <= 760 )) ||
    // row 4
    ((ballY >= 230 && ballY <= 250)&& (ballX >= 40  && ballX <= 190 )) ||
    ((ballY >= 230 && ballY <= 270)&& (ballX >= 230 && ballX <= 760 )) ||
    // row 5
    ((ballY >= 290 && ballY <= 315)&& (ballX >= 40  && ballX <= 190 )) ||
    ((ballY >= 290 && ballY <= 315)&& (ballX >= 230 && ballX <= 300 )) ||
    ((ballY >= 310 && ballY <= 417)&& (ballX >= 340 && ballX <= 410 )) ||
    ((ballY >= 160 && ballY <= 417)&& (ballX >= 450 && ballX <= 520 )) ||
    ((ballY >= 310 && ballY <= 340)&& (ballX >= 560 && ballX <= 760 )) ||
    // row 6
    ((ballY >= 355 && ballY <= 417)&& (ballX >= 40  && ballX <= 300 )) ||
    ((ballY >= 380 && ballY <= 417)&& (ballX >= 340 && ballX <= 760 ))) {
    canMoveUp = true;
    canMoveDown = true;
    canMoveLeft = true;
    canMoveRight = true;
  }
}

//dog info
void dogInfoScreen() {
  textAlign(LEFT, TOP);
  textSize(40);
  text("DOG", 20, 100);
  textSize(20);
  text("NEWFOUNDLANDS ARE AMAZING LIFEGUARDS", 20, 200);
  text("DOGS HAVE THREE EYELIDS", 20, 240);
  text("A GREYHOUND COULD BEAT A CHEETAH IN A LONG DISTANCE RACE", 20, 280);
  text("THREE DOGS SURVIVED THE TITANIC SINKING", 20, 320);

  navButtonPrompt = "Maze of Learning";
  drawNavButton();
  if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen = 4;  //goto mazeOfLearningScreen
  }
}

//cat info
void catInfoScreen() {
  textAlign(LEFT, TOP);
  textSize(40);
  text("CAT", 20, 100);
  textSize(20);
  text("CATS CAN ROTATE THEIR EARS 180 DEGREES", 20, 200);
  text("A CAT CANNOT SEE DIRECTLY UNDER ITS NOSE", 20, 240);
  text("MOST CATS HAVE NO EYELASHES", 20, 280);
  text("CATS HAVE FIVE TOES ON EACH FRONT PAW,", 20, 320);
  text("BUT ONLY FOUR ON THE BACK ONES", 20, 360);


  navButtonPrompt = "Maze of Learning";
  drawNavButton();
  if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen = 4;  //goto mazeOfLearningScreen
  }
}

//pig info
void pigInfoScreen() {
  textAlign(LEFT, TOP);
  textSize(40);
  text("PIG", 20, 100);
  textSize(20);
  text("PIGS HAVE FOUR TOES BUT THEY ONLY WALK ON TWO ", 20, 200);
  text("THERE ARE AROUND TWO BILLION PIGS IN THE WORLD", 20, 240);
  text("RELATIVE TO THEIR BODY SIZE, PIGS HAVE SMALL LUNGS", 20, 280);

  navButtonPrompt = "Maze of Learning";
  drawNavButton();
  if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen = 4;  //goto mazeOfLearningScreen
  }
}

//fox info
void foxInfoScreen() {
  textAlign(LEFT, TOP);
  textSize(40);
  text("FOX", 20, 100);
  textSize(20);
  text("A GROUP OF FOXES IS CALLED A SKULK OR LEASH", 20, 200);
  text("FOXES HAVE WHISKERS ON THEIR LEGS AND FACE,", 20, 240);
  text("WHICH HELP THEM TO NAVIGATE", 20, 280);
  text("THE LIFE SPAN OF A FOX IS ABOUT TWO TO FIVE YEARS", 20, 320);

  navButtonPrompt = "Maze of Learning";
  drawNavButton();
  if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen = 4;  //goto mazeOfLearningScreen
  }
}

//panda info
void pandaInfoScreen() {
  textAlign(LEFT, TOP);
  textSize(40);
  text("PANDA", 20, 100);
  textSize(20);
  text("GIANT PANDAS ARE GOOD AT CLIMBING TREES AND CAN ALSO SWIM", 20, 200);
  text("PANDAS GO FROM PINK TO WHITE AND BLACK", 20, 240);
  text("GIANT PANDAS ARE SOLITARY AND LIKE LIVING ALONE", 20, 280);

  navButtonPrompt = "Maze of Learning";
  drawNavButton();
  if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen = 4;  //goto mazeOfLearningScreen
  }
}

//rabbit info
void rabbitInfoScreen() {
  textAlign(LEFT, TOP);
  textSize(40);
  text("RABBIT", 20, 100);
  textSize(20);
  text("A FEMALE RABBIT IS CALLED A DOE", 20, 200);
  text("A MALE RABBIT IS CALLED A BUCK", 20, 240);
  text("A YOUNG RABBIT IS CALLED A KIT", 20, 280);
  text("RABBITS LIVE IN GROUPS", 20, 320);

  navButtonPrompt = "Maze of Learning";
  drawNavButton();
  if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen = 4;  //goto mazeOfLearningScreen
  }
}

//test
void testScreen() {
  // goto the first game
  nextScreen = 12;
}

//draw true/false buttons in game screens
void drawTrueFalseButtons() {
  if (questionAnswered) {
    trueButtonLeft = -1;
    trueButtonTop = -1;
    trueButtonRight = -1;
    trueButtonBottom = -1;
    falseButtonLeft = -1;
    falseButtonTop = -1;
    falseButtonRight = -1;
    falseButtonBottom = -1;
  } else {
    trueButtonLeft = 300;
    trueButtonTop = 300;
    trueButtonRight = 360;
    trueButtonBottom = 360;
    falseButtonLeft = 500;
    falseButtonTop = 300;
    falseButtonRight = 560;
    falseButtonBottom = 360;

    //"True" button
    fill(255);
    rect(trueButtonLeft, trueButtonTop, trueButtonRight, trueButtonBottom);
    noStroke();
    fill(93, 217, 85);
    beginShape();
    vertex(297, 313);
    vertex(329, 340);
    vertex(336, 326);
    vertex(340, 315);
    vertex(349, 300);
    vertex(361, 288);
    vertex(376, 272);
    vertex(388, 266);
    vertex(392, 265);
    vertex(396, 269);
    vertex(385, 276);
    vertex(376, 285);
    vertex(366, 300);
    vertex(351, 324);
    vertex(342, 345);
    vertex(337, 366);
    vertex(288, 336);
    endShape(CLOSE);

    //"False" button
    fill(255);
    rect(falseButtonLeft, falseButtonTop, falseButtonRight, falseButtonBottom);
    fill(189, 63, 17);
    beginShape();
    vertex(502, 290);
    vertex(571, 356);
    vertex(570, 360);
    vertex(563, 360);
    vertex(498, 299);
    endShape(CLOSE);
    beginShape();
    vertex(501, 363);
    vertex(590, 281);
    vertex(587, 277);
    vertex(496, 351);
    endShape(CLOSE);
  }
}

//dog game screen
void dogGameScreen() {
  textAlign(LEFT, TOP);
  if (!playButtonClicked) {
    textSize(20);
    text("Use the keys LEFT, RIGHT, UP and DOWN", 15, 50);
    text("to move the dog to collect bones as many as possible in 30 seconds.", 15, 80);
    text("Answer a bouns question right to get extra 10 points.", 15, 110);

    //reset position for the game screen
    dogStartX = 500;
    dogStartY = 150;
    questionAnswered = false;
  } else {
    gameDuration = (millis() - gameStartTime)/1000;
    if (gameDuration >= gameMaxTime) {
      gameDuration = gameMaxTime;
      gameOver = true;
    }
  }
  textSize(15);
  text("Time elapsed:" + gameDuration + " seconds", 5, 5);

  if (!gameOver) {
    text("Your score:" + scoreInDogGame, 250, 5);

    //bone
    fill(255);
    boneLeft = random(0, 800);
    boneTop = random(0, 500);
    boneRight = boneLeft + 20;
    boneBottom = boneTop + 10;
    ellipse(boneLeft, boneTop, 10, 10);
    ellipse(boneRight, boneTop, 10, 10); 
    ellipse(boneLeft, boneBottom, 10, 10);
    ellipse(boneRight, boneBottom, 10, 10); 
    rect(boneLeft, boneTop, boneRight, boneBottom);

    //dog
    drawDog();
  } else {
    textSize(50);
    text("Your score:" + scoreInDogGame, 150, 50);

    textSize(20);
    text("T or F: DOGS HAVE THREE EYELIDS.", 100, 200); 
    drawTrueFalseButtons();
  }
  drawButtonOnGameScreen();
}


void catGameScreen() {
  textAlign(LEFT, TOP);
  if (!playButtonClicked) {
    textSize(20);
    text("Use your mouse to find out where the cat hides behind.", 15, 50);
    text("You will earn 50 points if you guess it right on the first time.", 15, 80);
    text("You will lose 10 points for each mistake you make.", 15, 110);
    text("You have 30 seconds to complete the mission", 15, 140);
    text("Answer a bouns question right to get extra 10 points.", 15, 170);

    board1Clicked =false;
    board2Clicked =false;
    board3Clicked =false;
    board4Clicked =false;
    board5Clicked =false;
    questionAnswered = false;
  } else {
    gameDuration = (millis() - gameStartTime)/1000;
    if (gameDuration >= gameMaxTime) {
      gameDuration = gameMaxTime;
      gameOver = true;
    }
  }
  textSize(15);
  text("Time elapsed:" + gameDuration + " seconds", 5, 5);

  if (!gameOver) {
    //cat
    if (catBehindBoard == 1) {
      catStartX = board1Left + 5;
      catStartY = board1Top + 5;
    } else if (catBehindBoard == 2) {
      catStartX = board2Left + 5;
      catStartY = board2Top + 5;
    } else if (catBehindBoard == 3) {
      catStartX = board3Left + 5;
      catStartY = board3Top + 5;
    } else if (catBehindBoard == 4) {
      catStartX = board4Left + 5;
      catStartY = board4Top + 5;
    } else if (catBehindBoard == 5) {
      catStartX = board5Left + 5;
      catStartY = board5Top + 5;
    }
    drawCat();

    fill(255);  
    //boards
    if (!board1Clicked) {
      rect(board1Left, board1Top, board1Right, board1Bottom);
    }
    if (!board2Clicked) {
      rect(board2Left, board2Top, board2Right, board2Bottom);
    }
    if (!board3Clicked) {
      rect(board3Left, board3Top, board3Right, board3Bottom);
    }
    if (!board4Clicked) {
      rect(board4Left, board4Top, board4Right, board4Bottom);
    }
    if (!board5Clicked) {
      rect(board5Left, board5Top, board5Right, board5Bottom);
    }

    if (catFound) {
      if (showCatDelay-- == 0) {
        gameOver = true;
      }
    }
  } else { 
    scoreInCatGame = 60;
    if (board1Clicked) {
      scoreInCatGame -= 10;
    }
    if (board2Clicked) {
      scoreInCatGame -= 10;
    }
    if (board3Clicked) {
      scoreInCatGame -= 10;
    }
    if (board4Clicked) {
      scoreInCatGame -= 10;
    }
    if (board5Clicked) {
      scoreInCatGame -= 10;
    }

    textSize(50);
    text("Your score:" + scoreInCatGame, 150, 50);

    textSize(20);
    text("T or F: CATS CAN ROTATE THEIR EARS 180 DEGREES.", 100, 200); 
    drawTrueFalseButtons();
  }
  drawButtonOnGameScreen();
}

//pig game screen
void pigGameScreen() {
  textAlign(LEFT, TOP);
  if (!playButtonClicked) {
    textSize(20);
    text("Use the keys LEFT and RIGHT to move the pig from right to left.", 15, 90);
    text("You fail if the pig is hit by fire.", 15, 120);
    text("You will earn 50 points if you pass in 30 seconds.", 15, 150);
    text("You only have once chance to complete the mission.", 15, 180);
    text("Answer a bouns question right to get extra 10 points.", 15, 210);

    pigStartX = 650;
    questionAnswered = false;
  } else {
    gameDuration = (millis() - gameStartTime)/1000;
    if (gameDuration >= gameMaxTime) {
      gameDuration = gameMaxTime;
      gameOver = true;
    }
  }
  textSize(15);
  text("Time elapsed:" + gameDuration + " seconds", 5, 5);

  if (!gameOver) {
    text("Your score:" + scoreInPigGame, 250, 5);

    //fire
    fireDropY1 += 5;
    if (fireDropY1 > 500)
    {
      fireDropY1 = 5;
    }
    drawFire1();

    fireDropY2 += 5;
    if (fireDropY2 > 500)
    {
      fireDropY2 = 5;
    }
    drawFire2();

    //pig
    drawPig();

    //check result
    float fire1Left = 562;
    float fire1Top = 3 + fireDropY1;
    float fire1Right = 633;
    float fire1Bottom = 81 + fireDropY1;

    float fire2Left = 206;
    float fire2Top = 3 + fireDropY2;
    float fire2Right = 283;
    float fire2Bottom = 81 + fireDropY2;

    float pigXMax = pigStartX + 250;
    float pigYMax = pigStartY + 150;

    if ((fire1Left < pigXMax && fire1Right > pigStartX && fire1Top < pigYMax && fire1Bottom > pigStartY) || 
      (fire2Left < pigXMax && fire2Right > pigStartX && fire2Top < pigYMax && fire2Bottom > pigStartY)) {
      gameOver = true;
    } else if (pigXMax < 280)
    {
      scoreInPigGame = 50;
      gameOver = true;
    }
  } else {
    textSize(50);
    text("Your score:" + scoreInPigGame, 150, 50);

    textSize(20);
    text("T or F: PIGS HAVE SMALL LUNGS, RELATIVE TO THEIR BODY SIZE.", 100, 200); 
    drawTrueFalseButtons();
  }
  drawButtonOnGameScreen();
}

void drawFire1() {
  fill(255, 0, 0);
  beginShape();
  vertex(596, 81 + fireDropY1);
  vertex(587, 80 + fireDropY1);
  vertex(574, 78 + fireDropY1);
  vertex(563, 71 + fireDropY1);
  vertex(557, 63 + fireDropY1);
  vertex(556, 55 + fireDropY1);
  vertex(558, 46 + fireDropY1);
  vertex(562, 38 + fireDropY1);
  vertex(563, 27 + fireDropY1);
  vertex(574, 38 + fireDropY1);
  vertex(574, 28 + fireDropY1);
  vertex(577, 22 + fireDropY1);
  vertex(581, 13 + fireDropY1);
  vertex(586, 8 + fireDropY1);
  vertex(590, 6 + fireDropY1);
  vertex(599, 3 + fireDropY1);
  vertex(597, 11 + fireDropY1);
  vertex(601, 19 + fireDropY1);
  vertex(605, 22 + fireDropY1);
  vertex(610, 26 + fireDropY1);
  vertex(623, 35 + fireDropY1);
  vertex(625, 41 + fireDropY1);
  vertex(620, 40 + fireDropY1);
  vertex(623, 35 + fireDropY1);
  vertex(622, 28 + fireDropY1);
  vertex(620, 25 + fireDropY1);
  vertex(626, 29 + fireDropY1);
  vertex(630, 35 + fireDropY1);
  vertex(632, 43 + fireDropY1);
  vertex(633, 47 + fireDropY1);
  vertex(633, 57 + fireDropY1);
  vertex(630, 67 + fireDropY1);
  vertex(626, 71 + fireDropY1);
  vertex(622, 76 + fireDropY1);
  vertex(628, 77 + fireDropY1);
  vertex(614, 79 + fireDropY1);
  vertex(600, 81 + fireDropY1);
  endShape(CLOSE);
}

void drawFire2() {
  fill(255, 0, 0);
  beginShape();
  vertex(246, 81 + fireDropY2);
  vertex(237, 80 + fireDropY2);
  vertex(224, 78 + fireDropY2);
  vertex(213, 71 + fireDropY2);
  vertex(207, 63 + fireDropY2);
  vertex(206, 55 + fireDropY2);
  vertex(208, 46 + fireDropY2);
  vertex(212, 38 + fireDropY2);
  vertex(213, 27 + fireDropY2);
  vertex(224, 38 + fireDropY2);
  vertex(224, 28 + fireDropY2);
  vertex(227, 22 + fireDropY2);
  vertex(231, 13 + fireDropY2);
  vertex(236, 8 + fireDropY2);
  vertex(240, 6 + fireDropY2);
  vertex(249, 3 + fireDropY2);
  vertex(247, 11 + fireDropY2);
  vertex(251, 19 + fireDropY2);
  vertex(255, 22 + fireDropY2);
  vertex(260, 26 + fireDropY2);
  vertex(263, 35 + fireDropY2);
  vertex(265, 41 + fireDropY2);
  vertex(270, 40 + fireDropY2);
  vertex(273, 35 + fireDropY2);
  vertex(272, 28 + fireDropY2);
  vertex(270, 25 + fireDropY2);
  vertex(276, 29 + fireDropY2);
  vertex(280, 35 + fireDropY2);
  vertex(282, 43 + fireDropY2);
  vertex(283, 47 + fireDropY2);
  vertex(283, 57 + fireDropY2);
  vertex(280, 67 + fireDropY2);
  vertex(276, 71 + fireDropY2);
  vertex(272, 76 + fireDropY2);
  vertex(268, 77 + fireDropY2);
  vertex(264, 79 + fireDropY2);
  vertex(250, 81 + fireDropY2);
  endShape(CLOSE);
}

//fox game screen
void foxGameScreen() {
  textAlign(LEFT, TOP);
  if (!playButtonClicked) {
    textSize(20);
    text("Use UP and DOWN to selct a direction.", 15, 90);
    text("Use SPACE to fire.", 15, 120);
    text("You will earn 10 points when hits the fox once.", 15, 150);
    text("Hit the fox as many times as possible in 30 seconds.", 15, 180);
    text("Answer a bouns question right to get extra 10 points.", 15, 210);

    foxStartX = 660;
    foxStartY = 10;
    questionAnswered = false;
  } else {
    gameDuration = (millis() - gameStartTime)/1000;
    if (gameDuration >= gameMaxTime) {
      gameDuration = gameMaxTime;
      gameOver = true;
    }
  }
  textSize(15);
  text("Time elapsed:" + gameDuration + " seconds", 5, 5);

  if (!gameOver) {
    text("Your score:" + scoreInFoxGame, 250, 5);

    // gun
    if (shooting) {
      bulletOffsetX += 15;
      bulletOffsetY += 15 * tan(shootAngle);

      if (bulletOffsetX > 700 || bulletOffsetY > 400) {
        bulletOffsetX = 0;
        bulletOffsetY = 0;
        shooting = false;
      }
    }

    stroke(0);
    strokeWeight(10);
    float x = 50 + bulletOffsetX;
    float y = 450 - bulletOffsetY ;

    line(x, y, x + 28, y - 28 * tan(shootAngle));
    strokeWeight(1);
    ellipse(x, y, 25, 25);

    // fox
    foxSpeed--;
    if (foxSpeed < 0) {
      foxSpeed = 100;
      foxStartX = random(400, 700);
      foxStartY = random(10, 400);
    }
    drawFox();

    // check if the fox is hit
    if (x > foxStartX && x < foxStartX + 142 && 
      y > foxStartY && y < foxStartY + 142) {
      scoreInFoxGame += 10;
      bulletOffsetX = 0;
      bulletOffsetY = 0;
      shooting = false;
    }
  } else {
    textSize(50);
    text("Your score:" + scoreInFoxGame, 150, 50);

    textSize(20);
    text("T or F: THE LIFE SPAN OF A FOX IS ABOUT TWO TO SIX YEARS.", 100, 200); 
    drawTrueFalseButtons();
  }
  drawButtonOnGameScreen();
}


//panda game screen
void pandaGameScreen() {
  textAlign(LEFT, TOP);
  if (!playButtonClicked) {
    textSize(20);
    text("Use the keys LEFT and RIGHT to move the stone.", 15, 90);
    text("Use SPACE to drop the stone.", 15, 120);
    text("You will earn 10 points when you hit the panda.", 15, 150);
    text("Hit the pandas as many times as possible in 30 seconds.", 15, 180);
    text("Answer a bouns question right to get extra 10 points.", 15, 210);

    questionAnswered = false;
  } else {
    gameDuration = (millis() - gameStartTime)/1000;
    if (gameDuration >= gameMaxTime) {
      gameDuration = gameMaxTime;
      gameOver = true;
    }
  }
  textSize(15);
  text("Time elapsed:" + gameDuration + " seconds", 5, 5);

  if (!gameOver) {
    text("Your score:" + scoreInPandaGame, 250, 5);

    //stone
    if (shooting) {
      stoneDropY += 10;

      if (stoneDropY > 500) {
        stoneDropY = 0;
        shooting = false;
      }
    }
    ellipse(50 + stoneDropX, 50 + stoneDropY, 25, 25);

    //panda
    pandaStartY = 350;
    if (!playButtonClicked) {
      pandaStartX = 20;
    } else {
      pandaStartX += 5;
      if (pandaStartX > 800) {
        pandaStartX = 0;
      }
    }

    drawPanda();

    //check if the panda is hit
    float stoneCenterX = 50 + stoneDropX;
    float stoneCenterY = 50 + stoneDropY;

    if (stoneCenterX > pandaStartX && stoneCenterX < pandaStartX + 80 && 
      stoneCenterY > pandaStartY && stoneCenterY < pandaStartY + 80) {
      scoreInPandaGame += 10;
      stoneDropY = 500;
    }
  } else {
    textSize(50);
    text("Your score: " + scoreInPandaGame, 150, 50);

    textSize(20);
    text("T or F: GIANT PANDAS CANNOT SWIM.", 100, 200); 
    drawTrueFalseButtons();
  }
  drawButtonOnGameScreen();
}

//rabbit game screen
void rabbitGameScreen() {
  textAlign(LEFT, TOP);
  if (!playButtonClicked) {
    textSize(20);
    text("Use UP and DOWN to selct a height of the lifter.", 15, 90);
    text("Use SPACE to jump.", 15, 120);
    text("You will earn 10 points when jumps into the hole once.", 15, 150);
    text("Jump as many times as possible in 30 seconds.", 15, 180);
    text("Answer a bouns question right to get extra 10 points.", 15, 210);

    lifterY = 380;
    rabbitStartX = 598;
    questionAnswered = false;
  } else {
    gameDuration = (millis() - gameStartTime)/1000;
    if (gameDuration >= gameMaxTime) {
      gameDuration = gameMaxTime;
      gameOver = true;
    }
  }
  textSize(15);
  text("Time elapsed:" + gameDuration + " seconds", 5, 5);

  //The lifter
  fill(81, 168, 164);
  ellipse(662, 408, 60, 60);
  ellipse(762, 408, 60, 60);

  stroke(143, 50, 98);
  strokeWeight(20);
  line(662, 408, 762, 408);
  line(762, 408, 762, 40);

  //movable part
  fill(108, 217, 91);
  ellipse(762, lifterY, 20, 20); 
  stroke(0);
  strokeWeight(10);
  line(762, lifterY, 680, lifterY - 20);
  line(680, lifterY - 20, 600, lifterY - 20);

  if (!gameOver) {
    text("Your score:" + scoreInRabbitGame, 250, 5);

    if (shooting) {
      rabbitStartX -= 5;
      rabbitStartY += lifterY * 0.01;

      if (rabbitStartX < 100 || rabbitStartY > 450) {
        rabbitStartX = 598;
        rabbitStartY = lifterY - 142;
        shooting = false;

        rabbitHoleCenterX = random(200, 500);
        rabbitHoleCenterY = random(250, 400);
      }
    } else {
      rabbitStartY = lifterY - 142;
    }

    //hole
    drawRabbitHole();

    //rabbit
    rabbitInGame = true;
    drawRabbit();

    // check if the rabbit is in the hole
    if (rabbitHoleCenterX > rabbitStartX && rabbitHoleCenterX < rabbitStartX + 50 && 
      rabbitHoleCenterY > rabbitStartY + 50 && rabbitHoleCenterY < rabbitStartY + 140) {
      scoreInRabbitGame += 10;
      rabbitStartX = 598;
      rabbitStartY = lifterY - 142;
      shooting = false;

      rabbitHoleCenterX = random(200, 500);
      rabbitHoleCenterY = random(250, 400);
    }
  } else {
    textSize(50);
    text("Your score:" + scoreInRabbitGame, 150, 50);

    textSize(20);
    text("T or F: RABBITS ARE SOLITARY AND LIKE TO LIVE ALONE.", 100, 200); 
    drawTrueFalseButtons();
  }
  drawButtonOnGameScreen();
}

//play and navigation button on game screens
void drawButtonOnGameScreen()
{
  if (!playButtonClicked)
  {
    // "Start" button
    fill(25, 181, 67);
    rect(playButtonLeft, playButtonTop, playButtonRight, playButtonBottom);

    fill(0);
    textSize(15);
    textAlign(CENTER, CENTER);
    text("Play", (playButtonLeft + playButtonRight)/2, (playButtonTop + playButtonBottom)/2);
  }

  navButtonPrompt = "Next";
  drawNavButton();
  if (navButtonClicked) {
    navButtonClicked = false;
    nextScreen++;  // goto next game
  }
}

//congratulation screen
void congratulationScreen() {
  textAlign(LEFT, TOP);
  textSize(30);
  stroke(0);

  int totalScore = scoreInDogGame + scoreInCatGame + scoreInPigGame + scoreInFoxGame + scoreInPandaGame + scoreInRabbitGame;
  if (totalScore >= 300) {
    text("Congratulations! You scored " + totalScore, 30, 90);
    text("and completed the missions sucessfully!", 30, 150);
  } else {
    text("Sorry! You failed with score " + totalScore, 30, 90);
    text("You could go back to the main menu and try again.", 30, 150);
  }

  navButtonPrompt = "Main menu";
  drawNavButton();
  if (navButtonClicked)
  {
    navButtonClicked = false;
    nextScreen = 2;  //goto mainMenuScreen
  }
}

//goodbye screen
void goodByeScreen() {
  fill(0);
  textAlign(LEFT, TOP);
  textSize(100);
  text("GOODBYE", 140, 10);
  textSize(50);
  text("MADE BY: ANDREA CEN", 125, 140);
  //credits
  textSize(20);
  text("https://www.chinahighlights.com/giant-panda/interesting-facts.htm", 20, 200);
  text("https://www.purina.co.uk/dogs/behaviour-and-training/understanding-dog", 20, 220);
  text("-behaviours/amazing-dog-facts", 20, 240);
  text("https://www.purina.ca/articles/cat/facts/10-fascinating", 20, 260);
  text("-facts-about-cats", 20, 280);
  text("https://www.earthrangers.com/top", 20, 300);
  text("-10/top-ten-fun-fox-facts/", 20, 320);
  text("http://www.sciencekids.co.nz/science", 20, 340);
  text("facts/animals/pig.html", 20, 360);
  text("http://www.sciencekids.co.nz/science", 20, 380);
  text("facts/animals/rabbit.html", 20, 400);
  

  //"Exit" button
  fill(25, 181, 67);
  rect(exitButtonLeft, exitButtonTop, exitButtonRight, exitButtonBottom);

  fill(255, 0, 0);
  textSize(45);
  textAlign(CENTER, CENTER);
  text("EXIT", (exitButtonLeft + exitButtonRight)/2, (exitButtonTop + exitButtonBottom)/2);
  if (exitButtonClicked)
  {
    exit();
  }
}

void mouseClicked() {
  //navigation button
  if (mouseX >= navButtonLeft && mouseX <= navButtonRight && mouseY >= navButtonTop && mouseY <= navButtonBottom) {
    navButtonClicked = true;

    if (nextScreen == 12 || nextScreen == 13 || nextScreen == 14 || nextScreen == 15 || nextScreen == 16 || nextScreen == 17) {
      gameDuration = 0;
      gameOver = false;
      playButtonClicked = false;
    }
  } 

  //instructions screen
  if (nextScreen == 2) {
    if (mouseX >= insButtonLeft && mouseX <= insButtonRight && mouseY >= insButtonTop && mouseY <= insButtonBottom) {
      insButtonClicked = true;
    } else if (mouseX >= mazeButtonLeft && mouseX <= mazeButtonRight && mouseY >= mazeButtonTop && mouseY <= mazeButtonBottom) {
      mazeButtonClicked = true;
    }
  }

  //game screens
  else if (nextScreen == 12 || nextScreen == 13 || nextScreen == 14 || nextScreen == 15 || nextScreen == 16 || nextScreen == 17) {
    if (mouseX >= playButtonLeft && mouseX <= playButtonRight && mouseY >= playButtonTop && mouseY <= playButtonBottom) {
      playButtonClicked = true;
      gameStartTime = millis();

      //get random number of board in cat game
      if (nextScreen == 13) {
        catBehindBoard = int(random(1, 5.9));
      }
      //get random position of hole in rabbit game
      else if (nextScreen == 17) {
        rabbitHoleCenterX = random(200, 500);
        rabbitHoleCenterY = random(250, 400);
      }
    }

    boolean trueClicked = mouseX >= trueButtonLeft && mouseX <= trueButtonRight && mouseY >= trueButtonTop && mouseY <= trueButtonBottom;
    boolean falseClicked = mouseX >= falseButtonLeft && mouseX <= falseButtonRight && mouseY >= falseButtonTop && mouseY <= falseButtonBottom;
    // dog game
    if (nextScreen == 12) {
      if (trueClicked) {
        scoreInDogGame += 10;
        questionAnswered = true;
      } else if (falseClicked) {
        questionAnswered = true;
      }
    }
    //cat game
    else if (nextScreen == 13) {
      if (playButtonClicked) {
        if (mouseX >= board1Left && mouseX <= board1Right && mouseY >= board1Top && mouseY <= board1Bottom) {
          board1Clicked = true;
          if (catBehindBoard != 1) {
            scoreInCatGame -= 10;
          } else {
            catFound = true;
          }
        } else if (mouseX >= board2Left && mouseX <= board2Right && mouseY >= board2Top && mouseY <= board2Bottom) {
          board2Clicked = true;
          if (catBehindBoard != 2) {
            scoreInCatGame -= 10;
          } else {
            catFound = true;
          }
        } else if (mouseX >= board3Left && mouseX <= board3Right && mouseY >= board3Top && mouseY <= board3Bottom) {
          board3Clicked = true;
          if (catBehindBoard != 3) {
            scoreInCatGame -= 10;
          } else {
            catFound = true;
          }
        } else if (mouseX >= board4Left && mouseX <= board4Right && mouseY >= board4Top && mouseY <= board4Bottom) {
          board4Clicked = true;
          if (catBehindBoard != 4) {
            scoreInCatGame -= 10;
          } else {
            catFound = true;
          }
        } else if (mouseX >= board5Left && mouseX <= board5Right && mouseY >= board5Top && mouseY <= board5Bottom) {
          board5Clicked = true;
          if (catBehindBoard != 5) {
            scoreInCatGame -= 10;
          } else {
            catFound = true;
          }
        }
      }

      if (trueClicked) {
        scoreInCatGame += 10;
        questionAnswered = true;
      } else if (falseClicked) {
        questionAnswered = true;
      }
    } 
    // pig game
    if (nextScreen == 14) {
      if (trueClicked) {
        scoreInPigGame += 10;
        questionAnswered = true;
      } else if (falseClicked) {
        questionAnswered = true;
      }
    }
    // fox game
    if (nextScreen == 15) {
      if (trueClicked) {
        questionAnswered = true;
      } else if (falseClicked) {
        scoreInFoxGame += 10;
        questionAnswered = true;
      }
    }
    // panda game
    if (nextScreen == 16) {
      if (trueClicked) {
        questionAnswered = true;
      } else if (falseClicked) {
        scoreInPandaGame += 10;
        questionAnswered = true;
      }
    }
    // rabbit game
    if (nextScreen == 17) {
      if (trueClicked) {
        questionAnswered = true;
      } else if (falseClicked) {
        scoreInRabbitGame += 10;
        questionAnswered = true;
      }
    }
  }

  // exit screen
  else if (nextScreen == 19) {
    if (mouseX >= exitButtonLeft && mouseX <= exitButtonRight && mouseY >= exitButtonTop && mouseY <= exitButtonBottom) {
      exitButtonClicked = true;
    }
  }
}

//drawing navigation button
void drawNavButton() {
  fill(5, 30, 120);
  stroke(5, 30, 120);
  strokeWeight(1);
  rect(navButtonLeft, navButtonTop, navButtonRight, navButtonBottom);

  fill(255);
  textSize(15);
  textAlign(CENTER, CENTER);
  text(navButtonPrompt, (navButtonLeft + navButtonRight) / 2, (navButtonTop + navButtonBottom) / 2);
}

//see which key is pressed and move the object
void keyPressed() {
  //maze screen
  if (nextScreen == 4) { 
    if (keyCode == UP && canMoveUp) {
      ballY -= 5;
      checkballMoveDirection();
      // move back if beyond the scope
      if (canMoveUp == false) {
        ballY += 5;
        checkballMoveDirection();
      }
    } else if (keyCode == DOWN && canMoveDown) {
      ballY += 5;
      checkballMoveDirection();
      // move back if beyond the scope
      if (canMoveDown == false) {
        ballY -= 5;
        checkballMoveDirection();
      }
    } else if (keyCode == LEFT && canMoveLeft) {
      ballX -= 5;
      checkballMoveDirection();
      // move back if beyond the scope
      if (canMoveLeft == false) {
        ballX += 5;
        checkballMoveDirection();
      }
    } else if (keyCode == RIGHT && canMoveRight) {
      ballX += 5;
      checkballMoveDirection();
      // move back if beyond the scope
      if (canMoveRight == false) {
        ballX -= 5;
        checkballMoveDirection();
      }
    }

    //dog is hit
    if (!dogCompleted && ballX >= dogXMin && ballX <= dogXMax && ballY >= dogYMin && ballY <= dogYMax) {
      dogCompleted = true;
      nextScreen = 5;   // goto dogInfoScreen
    }
    //cat is hit
    if (!catCompleted && ballX >= catXMin && ballX <= catXMax && ballY >= catYMin && ballY <= catYMax) {
      catCompleted = true;
      nextScreen = 6;   // goto catInfoScreen
    }
    //pig is hit
    if (!pigCompleted && ballX >= pigXMin && ballX <= pigXMax && ballY >= pigYMin && ballY <= pigYMax) {
      pigCompleted = true;
      nextScreen = 7;   // goto pigInfoScreen
    }
    //fox is hit
    if (!foxCompleted && ballX >= foxXMin && ballX <= foxXMax && ballY >= foxYMin && ballY <= foxYMax) {
      foxCompleted = true;
      nextScreen = 8;   // goto foxInfoScreen
    }
    //panda is hit
    if (!pandaCompleted && ballX >= pandaXMin && ballX <= pandaXMax && ballY >= pandaYMin && ballY <= pandaYMax) {
      pandaCompleted = true;
      nextScreen = 9;   // goto pandaInfoScreen
    }
    //rabbit is hit
    if (!rabbitCompleted && ballX >= rabbitXMin && ballX <= rabbitXMax && ballY >= rabbitYMin && ballY <= rabbitYMax) {
      rabbitCompleted = true;
      nextScreen = 10;   // goto rabbitInfoScreen
    }
    //test
    if (ballX >= testX && ballX <= testX + 50 && ballY >= testY && ballY <= testY + 30) {
      if (dogCompleted && catCompleted && pigCompleted && foxCompleted && pandaCompleted && rabbitCompleted) {
        nextScreen = 11;  // goto testScreen
      }
    }
  }

  //dog game screen
  else if (nextScreen == 12 && playButtonClicked) { 
    if (keyCode == LEFT) {
      dogStartX -= 3;
    } else if (keyCode == RIGHT) {
      dogStartX += 3;
    } else if (keyCode == UP) {
      dogStartY -= 3;
    } else if (keyCode == DOWN) {
      dogStartY += 3;
    }

    if (dogStartX < -100) {
      dogStartX = -100;
    } else if (dogStartX > 700) {
      dogStartX = 700;
    }

    if (dogStartY < -50 ) {
      dogStartY = -50;
    } else if (dogStartY > 400) {
      dogStartY = 400;
    }

    //check if a bone is caught
    if (boneLeft < dogStartX + 276 && boneRight > dogStartX && boneTop < dogStartY + 191 && boneBottom > dogStartY) {
      scoreInDogGame++;
    }

    //if fox is hit
    if (!foxCompleted && ballX >= foxXMin && ballX <= foxXMax && ballY >= foxYMin && ballY <= foxYMax) {
      foxCompleted = true;
      nextScreen = 8;   // goto foxScreen
    }
  }

  //pig game
  else if (nextScreen == 14 && playButtonClicked) {
    if (keyCode == LEFT) {
      pigStartX -= 10;
      if (pigStartX < -50) {
        pigStartX = -50;
      }
    } else if (keyCode == RIGHT) {
      pigStartX += 10;
      if (pigStartX > 650) {
        pigStartX = 650;
      }
    }
  }

  //fox game screen
  else if (nextScreen == 15 && playButtonClicked) {
    if (keyCode == UP) {
      shootAngle += 0.1;
      if (shootAngle > PI / 4) {
        shootAngle = PI / 4;
      }
    } else if (keyCode == DOWN) {
      shootAngle -= 0.1;
      if (shootAngle < 0) {
        shootAngle = 0;
      }
    }

    if (key == ' ') {
      shooting = true;
    }
  }

  //panda game screen
  else if (nextScreen == 16 && playButtonClicked) {
    if (keyCode == LEFT) {
      stoneDropX -= 10;
      if (stoneDropX < 0) {
        stoneDropX = 800;
      }
    } else if (keyCode == RIGHT) {
      stoneDropX += 10;
      if (stoneDropX > 800) {
        stoneDropX = 0;
      }
    }
    if (key == ' ') {
      shooting = true;
    }
  }

  //rabbit game screen
  else if (nextScreen == 17 && playButtonClicked) {
    if (keyCode == UP) {
      lifterY -= 10;
      if (lifterY < 140) {
        lifterY = 140;
      }
    } else if (keyCode == DOWN) {
      lifterY += 10;
      if (lifterY > 400) {
        lifterY = 400;
      }
    }
    if (key == ' ') {
      shooting = true;
    }
  }
}
