int score = 0;
boolean state = false;
boolean end = false;
int highscore = 0;
class person{   
  int x = 400;
  int y = 400;
  int speed = 20;
  int personD = 30;
  person() {
  }

  void display() {
    fill(0);
    imageMode(CENTER);
    image(img2,x, y, 80, 80);
  }

  void move() {
    if (keyPressed == true) {
      switch(key) {
      case 'w':
        y-=speed;
        break;
      case 'a':
        x-=speed;
        break;
      case 's':
        y+=speed;
        break;
      case 'd':
        x+=speed;
        break;
      }
      if ( x>width-personD) {
        x=width-personD;
      }
      if ( x<0) {
        x=0;
      }
      if (y<0) {
        y=0;
      }
      if (y>height-personD) {
        y=height-personD;
      }
    }
  }
  boolean intersect(banana r){
    float distance = dist(x,y, r.T, r.G);
  if (distance  < 50) {
    return true;
    
  }else {
  return false;
  }
  }
   boolean intersect(ranger q){
    float dis = dist(x,y, q.X, q.Y);
  if (dis  < 50) {
    return true; 
  }else {
  return false;
  }
}
}

class banana {
  float T;
  float G;
  
  void randomize() {
    T = random(20, 780);
    G = random(20, 580);
  }

  void makeB() {
    image(img, T, G, 30, 30);
  }
}
float Xspeed = 9;
float Yspeed = 7;

class ranger {
   float X = 100;
float Y = 100;

ranger(){
}
void show(){ 
image(img3,X,Y, 70, 70);
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
void fast(){
 X = X + Xspeed;
  Y = Y + Yspeed;
  if ((X > width) || (X < 0)) {
    Xspeed = Xspeed * -1;
  }
  if ((Y > height) || (Y < 0)) {
    Yspeed = Yspeed * -1;
}  
float Xspeed = 30;
float Yspeed = 30;
}
}
  



person myPerson;
banana myBna;
ranger myRanger;

PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
int time = 0;

void setup() {
  size(800, 600);
  myPerson = new person();
  myBna = new banana();
  myRanger = new ranger();
  
  img =loadImage("bna.png");
  img2 = loadImage("monkey.png");
  img3= loadImage("ranger.png");
  img4 = loadImage("plants2.png");
  img5 = loadImage("snowy.png");
  
  myBna.randomize();
  
}

void draw() {
  background(41,94,6);
  if (state == false){
        imageMode(CENTER);
image(img4, 400, 300, 800, 600);
  }
   if (state == true ) {
    level2();
     imageMode(CENTER);
  image(img5, 400, 300, 800, 600);
  score();
  myPerson.move();
  myPerson.display();
  myBna.makeB();
  myRanger.motion();
  myRanger.show();


  
  
   if(myPerson.intersect(myBna)){
    myBna.randomize(); 
    score++;
   }
  
   if(myPerson.intersect(myRanger)){
    end = true;
   
   }
   if (end == true){
   gameover();
}
  if(keyPressed){ 
if(key == 'r'){
  end = false;
  state = false;
}
  }
  if(score>5){
    state = true;

  }
    }

   
    
  score();
  myPerson.move();
  myPerson.display();
  myBna.makeB();
  myRanger.motion();
  myRanger.show();


  
  
   if(myPerson.intersect(myBna)){ //collide monkey with banana and adds 1 to score
    myBna.randomize(); 
    score++;
   }
  
   if(myPerson.intersect(myRanger)){//collide monkey with ranger
    end = true;
   
   }
   if (end == true){//sends to game over screen and sets high score
   gameover();
    if (score>=highscore){
     highscore = score;
    }
    score = 0;;

   
   }
  if(keyPressed){ //resets game
if(key == 'r'){
  end = false;
     
}
  }
  if(score>5){
    state = true;
  }
}   

void score() {
  textSize(20);
 text("score:"+score, 400, 100);
text("Collect the Bananas but stay away from the Ranger", 150, 50);
text("High Score:"+ highscore, 150, 80);
}//draws score
void gameover(){
background(0);
fill(255);
textSize(40);
text("GAME OVER", 250, 300);
text("press R to Play Again" ,250, 450);
textSize(20);
}//creates game over scene
void level2(){
  background(110, 126, 142);
 
 
  myRanger.fast();
}//this creates the 2nd room, the ranger moves faster.
