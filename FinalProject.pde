boolean startPage = true;

int d =0; //variable for dashed lines on road
int k = 0;// variable for streetlamps on road

car player1;

traffic[] Traffic;
PVector UL1;//upper left of play box
PVector LL1;//lower left of play box
PVector UR1;//upper right of play box
PVector LR1;//lower right of play box
int Z = 3;
PImage img1;

Timer myTimer;
//import Sketches. FINAL.*;
//SoundFile file;
void setup() {
  size(1000, 700);
  //colorMode(0);
  rectMode(CENTER);
  imageMode(CENTER);
  myTimer = new Timer();
  player1= new car(800, 600);//red car

  img1 = loadImage("https://cloud.githubusercontent.com/assets/14895970/11832871/cd004490-a382-11e5-8111-a314bb770efe.png");
  

  frameRate(60);
  UL1 = new PVector(10, 50);//corners of stage square
  UR1 = new PVector(200, 50);
  LL1 = new PVector(10, 300);
  LR1 = new PVector(200, 300);


  Traffic = new traffic[10];//creates 4 random traffic cars that come from the left
  for (int x=0; x < Traffic.length; x++) {
    Traffic[x] = new traffic();
  }
  if(myTimer.passedTime >= 10){
    Traffic = new traffic[10];//creates 4 random traffic cars that come from the left
  for (int x=0; x < Traffic.length; x++) {
    Traffic[x] = new traffic();
    }
  }
  if (startPage == false) {
    myTimer.begin();
  }
}
void draw() {

  if (startPage == true) {
    begin();
  } else if (startPage == false) {
    background(51, 51, 51);
    drawStreetLamps(k);



    k += 15;//draws the streetlights
    if (k>width) {
      k=0;
    }
    drawlines(d);//draws lines on the road.
    d +=15;
    if (d >=width) {
      d = 0;
    }
    for (int i = 0; i < Traffic.length; i++) {    //  keep track of all the previous
      Traffic[i].update();                                         //  traffic 'spawned'.
      Traffic[i].display();
      Traffic[i].intersect();
    }
    
    myTimer.display();
    myTimer.Update();
    player1.displayCar();//displays red car
    player1.move();//moves red car
    player1.displayHealth();//displays the health of the red car
    if (player1.health <= 0) {//sends to game over page
      gameover();
    }
  }
}





void keyPressed() {
  player1.keyPressed();
}

void keyReleased() {
  player1.keyReleased();
}


void drawlines(int s) {
  stroke(250);

  for (int q = -1*width; q <= width; q+=100) {
    line( s+q, height/2, s+q+50, height/2);
    line( s+q, 250, s+q+50, 250);
    line( s+q, 150, s+q+50, 150);
    line( s+q, 450, s+q+50, 450);
    line( s+q, 550, s+q+50, 550);
  }


  line(0, 50, 1000, 50);
  line (0, 650, 1000, 650);
}
void drawStreetLamps(int p) {
  noStroke();
  fill(255, 255, 102, 90);
  for (int l = -1*width; l <= width; l+=1000) {
    ellipse(p+l, 0, 150, 150);
    ellipse(p+l+500, 700, 150, 150);
  }
}
void begin() {// begin screen
  background(50);
  myTimer.begin();
  fill(255, 181, 0);
  textSize(40);
  text("Speeder", 400, 350);
  text("Use WASD", 200, 600);
   text("Avoid Traffic!!!", 600, 600);
  if (keyPressed) {
    startPage = false;
  }
  fill(255, 255, 102, 90);//These are the lights in the corners on the begining page.
  ellipse(0, 700, 200, 200);
  ellipse(0, 0, 200, 200);
  ellipse(1000, 0, 200, 200);
  ellipse(1000, 700, 200, 200);

  fill(0, 100, 255);
  textSize(30);
  if (mouseX > 10 && mouseX < 200 && mouseY > 50 && mouseY < 300 ) {// if mouse is within the square then light up, if you click, then game begins
    fill(0, 255, 0);
    if (mousePressed) {
      startPage =false;
    }
  }
  rectMode(CORNERS);
  strokeWeight(0);
  rect(UL1.x, UL1.y, LR1.x, LR1.y);//The play rectangle
  fill(0);
  text("Play", 70, 200);
  rectMode(CENTER);
}
void gameover() {
  background(0);
  fill(255);

  text("GAME OVER", 500, 350);

  text("Press P to play again", 500, 500);
  if (keyPressed) {
    if (key == 'p') {
      player1.health = 100;
      startPage = true;
      myTimer.begin();
    }
  }
}
class Timer {
  int startTime;// two variables to keep track of the time that the timer starts and length of time for the timer.
  
  int passedTime;
  
  // The constructor, set how long the Timer last with integer value
  Timer() {
   
  }

  // Start the Timer
  void begin() {
    startTime = millis();
  }
  
  void Update() {
    passedTime = millis() - startTime;
  }
  void display() {
    fill(#FFFF00);
    text(passedTime/1000.0, 50, 100);
  }
}
class car {

  boolean isCop = false;

  float posX; 
  float posY;

  int health = 100;

  float forwardSpeed = .20;
  float backwardSpeed = .20;

  float rotateSpeed = .05;
  float angle=3.14;
  boolean x = false;
  boolean keys[] = {false, false, false, false, false};


  boolean canFire = true;



  car(int x, int y) {
    posX = x;
    posY = y;
  }


  void displayCar() {
    translate(posX, posY);
    rotate(angle);
    image(img1, 0, 0, 80, 60);   //triangle(0, -20, 0, 20, 50, 0);
    headlight();
    rotate(-1*angle);
    translate(-1*posX, -1*posY);
  }

  

  void keyPressed() {
    if (key == 'w') {
      keys[0] = true;
    }
    if (key == 'a') {
      keys[1] = true;
    }
    if (key == 's') {
      keys[2] = true;
    }
    if (key == 'd') {
      keys[3] = true;
    }
  }


  void keyReleased() {
    if (key == 'w') {
      keys[0] = false;
    }
    if (key == 'a') {
      keys[1] = false;
    }
    if (key == 's') {
      keys[2] = false;
    }
    if (key == 'd') {
      keys[3] = false;
    }
  }




  void move() {
    if (keys[0]) {
      posX += 1/(forwardSpeed/cos(angle));
      posY += 1/(forwardSpeed/sin(angle));
    }
    if (keys[1]) {
      angle -= rotateSpeed;
    }
    if (keys[2]) {
      posX -= 1/(backwardSpeed/cos(angle));
      posY -= 1/(backwardSpeed/sin(angle));
    }
    if (keys[3]) {
      angle += rotateSpeed;
    }


    if ( posX>width) {
      posX=width;//-
    }
    if ( posX<0) {//+
      posX=0;
    }
    if (posY<0) {//+
      posY=0;
    }
    if (posY>height) {//-
      posY=height;
    }
  }


  void headlight() {
    colorMode(RGB);
    noStroke();
    fill(255, 255, 102, 90);
    triangle(0 + 28, 0 - 14, 0 + 70, 0+ 10, 0 + 70, 0 - 45);
    triangle(0+ 28, 0+ 14, 0 + 70, 0 + 45, 0 + 70, 0 - 30);
  }


  void displayHealth() {
    text("Health:" + health, 50, 50);
  }
}
class traffic {

  int centerX, centerY, size;
  PImage img;
  int carType;

  traffic() {
    centerX = round(random(-700, -100));
    centerY = round(random(175, 525)) ;
    size = round(random(50, 100));
    carType = round(random(3));
    img = loadImage("https://cloud.githubusercontent.com/assets/14895970/11832932/6e81b6fa-a383-11e5-9252-235c76c66c49.png");
  }
  void update() {// updates position of traffic
    centerY = centerY;
    centerX = round(random(5, 5)) + centerX;//Man comes from 0 and goes left
    if (centerX >= width+200) {
      resetPos();
    }
  }



  void display() {//displays funtion for traffic
    switch(carType) {
    case 0://semi truck

      rectMode(CENTER);
      stroke(0);

      fill(10);
      rect(centerX, centerY, 150, 50);
      fill(128);
      rect(centerX-92, centerY- 19, 20, 12, 4);
      rect(centerX-92, centerY+ 19, 20, 12, 4);
      fill(110);
      rect(centerX -90, centerY, 30, 30);
      fill(224);
      rect(centerX-110, centerY, 40, 50);
      fill(192);
      arc(centerX-105, centerY, 50, 30, OPEN, TWO_PI-PI/4);
      rect(centerX-130, centerY, 15, 35);
      fill(128);
      rect(centerX- 131, centerY - 19, 13, 12);
      rect(centerX -131, centerY + 19, 12, 12);
      fill(192);
      rect(centerX- 150, centerY, 22, 32);

      fill(160);
      rect(centerX-154, centerY -19, 20, 12, 4);//top wheel
      rect(centerX-154, centerY +19, 20, 12, 4);//bottom wheel
      triangle(centerX-137.5, centerY-17.5, centerX - 145, centerY, centerX- 137.5, centerY +17.5);
      fill(128);
      rect(centerX-161, centerY, 5, 32, 2);
      rect(centerX-162, centerY -19, 5, 14, 3);
      rect(centerX-162, centerY +19, 5, 14, 3);
      fill(110);
      triangle(centerX - 135, centerY- 8, centerX - 148, centerY -12, centerX-148, centerY-4);
      triangle(centerX - 135, centerY+8, centerX - 148, centerY +12, centerX-148, centerY+4);
      stroke(255, 153, 51);
      strokeWeight(5);
      point(centerX- 137.5, centerY -4);
      point(centerX- 137.5, centerY +4);
      point(centerX, centerY + 25);//bottom side lights on trailer
      point(centerX-20, centerY + 25);
      point(centerX-40, centerY + 25);
      point(centerX-60, centerY + 25);   
      point(centerX+20, centerY + 25);
      point(centerX+40, centerY + 25);
      point(centerX+60, centerY + 25);
      point(centerX, centerY - 25);//top side lights on trailer
      point(centerX-20, centerY - 25);
      point(centerX-40, centerY - 25);
      point(centerX-60, centerY - 25);   
      point(centerX+20, centerY - 25);
      point(centerX+40, centerY - 25);
      point(centerX+60, centerY - 25);



      strokeWeight(1);
      break;
    case 1://van
      image(img, centerX, centerY, 120, 70);

      break;
    case 2://convertable
      fill(210);
      rect(centerX, centerY, 110, 60, 20);//car body
      fill(255, 0, 0);
      rect(centerX+10, centerY, 45, 50, 15);//red inside
      fill(100, 100, 100, 150);//windshield
      stroke(0);
      arc (centerX, centerY, 35, 47, OPEN, HALF_PI+PI);
      beginShape();
      vertex(centerX, centerY-25);
      vertex(centerX+8, centerY-15);
      vertex(centerX+8, centerY+15);
      vertex(centerX, centerY +25);
      endShape(CLOSE);
      noStroke();
      fill(240);//hood
      beginShape();
      vertex(centerX-15, centerY - 30);
      vertex( centerX-55, centerY - 10);
      vertex( centerX-55, centerY + 10);
      vertex(centerX-15, centerY +30);
      endShape();
      stroke(0);
      fill(190);//streaks on hood
      beginShape();
      vertex(centerX-20, centerY +22);
      vertex( centerX-22, centerY + 17 );
      vertex( centerX-47, centerY + 8);
      vertex(centerX-43, centerY + 13);
      endShape();
      beginShape();
      vertex(centerX-20, centerY -22);
      vertex( centerX-22, centerY -17 );
      vertex( centerX-47, centerY - 8);
      vertex(centerX-43, centerY -13);
      endShape();
      noStroke();
      fill(150, 150, 200, 200);
      ellipse(centerX-48, centerY-24, 8, 10);
      ellipse(centerX-48, centerY+24, 8, 10);
      noStroke();
      fill(255, 255, 102, 90);
      triangle(centerX -55, centerY - 14, centerX - 100, centerY + 10, centerX - 100, centerY - 45);
      triangle(centerX -55, centerY+ 14, centerX - 100, centerY + 45, centerX - 100, centerY - 30);
      fill(255, 0, 0, 100);
      ellipse(centerX + 52, centerY-18, 7, 18); 
      ellipse(centerX + 52, centerY+18, 7, 18); 
      fill(190);
      stroke(100, 100, 100, 130);
      arc(centerX+37, centerY - 15, 20, 15, OPEN-PI/2-PI/2+PI/8, HALF_PI +PI/16);
      arc(centerX+37, centerY + 15, 20, 15, OPEN-PI/2-PI/2+PI/8, HALF_PI+PI/16 );
      break;
    }
  }

  void intersect() {
    if (carType == 0) {
      if (dist(player1.posX, player1.posY, centerX, centerY) < 90) {
        player1.health -= 100;
      }
    } else if (carType == 1) {
      if (dist(player1.posX, player1.posY, centerX, centerY) < 90) {
        player1.health -= 100;
      }
    } else if (carType == 2) {
      if (dist(player1.posX, player1.posY, centerX, centerY) < 90) {
        player1.health -= 100;
      }
    }
  }


  void resetPos() {//resets position of traffic cars once they are off screen
    centerX = round(random(-700, -100));
    centerY = round(random(0, 700)) ;
  }
}
