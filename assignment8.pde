 class CShip {
 int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3, turtleD;
  
  // constructor
  CShip(){
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
    turtleD = 50;
  }
  
  void display(){
    fill(107,142,35);
ellipse(centerX , centerY+40, 40, 40);
rect(centerX, centerY, 50, 17);
rect(centerX, centerY, -50, 17);
rect(centerX, centerY, 50, -17);
rect(centerX, centerY, -50, -17);
triangle(centerX+10, centerY, centerX -10, centerY, centerX, centerY - 60);
    fill(8, 185, 31);
ellipse(centerX, centerY, 80, 80);
fill(107,142,35);
ellipse(centerX, centerY, 70, 70);
fill(60,179,113);
ellipse(centerX, centerY+20, 20, 20);
ellipse(centerX+20, centerY, 20, 20);
ellipse(centerX-20, centerY, 20, 20); //right
ellipse(centerX, centerY-20, 20, 20);//bottom on diamond

  }
  
  void move() {
         if (keyPressed == true) {
      switch(key) {
      case 'w':
        centerY-=10;
        break;
      case 'a':
        centerX-=10;
        break;
      case 's':
        centerY+=10;
        break;
      case 'd':
        centerX+=10;
        break;
      }
      if ( centerX>width-turtleD) {
        centerX=width-turtleD;
      }
      if ( centerX<0+turtleD) {
        centerX=0+turtleD;
      }
      if (centerY<0+turtleD) {
        centerY=0+turtleD;
      }
      if (centerY>height-turtleD) {
        centerY=height-turtleD;
      }
         
      }
    }
boolean intersect(shark q){
    float dis = dist(centerX,centerY, q.X, q.Y);
  if (dis  < 60) {
    return true; 
  }else {
  return false;
  }
 }
  boolean intersect(egg r){
    float distance = dist(centerX,centerY, r.T, r.G);
  if (distance  < 60) {
    return true;
    
  }else {
  return false;
  }
 }
 }
 class Timer {
  int startTime;  // When Timer started
  int passedTime;

  // The constructor, set how long the Timer last with integer value
  Timer() {

  }

  // Start the Timer
  void begin() {
    startTime = millis();
  }
  void Update(){
    passedTime = millis() - startTime;
  }
  void display(){
    fill(#FFFF00);
    text(passedTime/1000.0, 50, 100);
  }
}
class egg {
  float T;
  float G;
  
  void randomize() {
    T = random(20, 780);
    G = random(20, 580);
  }

  void makeEgg() {
    fill(107,142,35);
    ellipse( T, G, 10, 15);
  }
}
PImage img;

class shark{
  float Xspeed = 9;
float Yspeed = 7;
float X = 100;
float Y = 100;

void show() {
  img = loadImage("shark.png");
  imageMode(CENTER);
image(img,X, Y,70, 70);
}
void motion() {
 X = X + Xspeed;
  Y = Y + Yspeed;
  if ((X > width) || (X < 0)) {
    Xspeed = Xspeed * -1;
  }
  if ((Y > height) || (Y < 0)) {
    Yspeed = Yspeed * -1;
  }
}
}
boolean end = false;
int score = 0;
//int s = second();
CShip myCShip;
Timer myTimer;
shark myShark;
egg myEgg;

void setup() {
  size(800, 600);
  
  myTimer = new Timer();
  myCShip = new CShip();
  myShark = new shark();
  myEgg = new egg();
  myEgg.randomize();
  myTimer.begin();
}
void draw() {
  if (score>=5) {
    background(#0018BE);
  }else{
  background(28, 107, 160);
}

  myCShip.display();
  myCShip.move();

  myTimer.Update();
  myTimer.display();
  myShark.motion();
  myShark.show();
  score();
  myEgg.makeEgg();

  // if(myTimer = 10){
  // }
  // text(second(), 350, 175);
  if (myTimer.passedTime >= 15000) {
    gameover();
  }
  if ((score == 10) && (myTimer.passedTime <= 15000)) {
    victory();
  }


  if (myCShip.intersect(myShark)) {
    end = true;
  }




  if (myCShip.intersect(myEgg)) {
    myEgg.randomize(); 
    score++;
  }

  if (end == true) {
    gameover();
    score = 0;
    ;
  }
}

void gameover() {
  background(0);
  fill(255);
  textSize(40);
  text("GAME OVER", 250, 300);
  text("press R to Play Again", 250, 450);
  textSize(20);
  if (keyPressed) { //resets game
    if (key == 'r') {
      end = false;
      myTimer.begin();
      score = 0;
    }
  }
  myTimer.passedTime = 0;
}
void score() {
  textSize(20);
  fill(#FFFF00);
  text("score:"+score, 400, 100);
  text("Collect 10 turtle eggs in under 15 seconds", 150, 50);
}//draws score
void victory() {
  background (random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));
  textSize(80);
  text("WINNER", 350, 300);
  text("Press R to reset", 150, 400);
  stroke(1);
   if (key == 'r') {
      end = false;
      myTimer.begin();
      score = 0;
   }
}
