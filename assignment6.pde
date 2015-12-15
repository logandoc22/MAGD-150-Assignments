int posX = 380;
int posY = 178;
float angle = 0.0;
int x = 1;

void setup() {
  size(800, 600);
}
void draw() {
  println (mouseX +"," + mouseY);
  
  frameRate(20);
  background(30);
  fill(50);
  rect(0,270, 800,330);
  fill(45);
 
  if (mousePressed) {
    drawTorch();
    writeText();
  }
   
   noStroke();
  triangle(386, 374, 473, 185, 496, 374);
  beginShape();
   vertex(472, 185);
   vertex(566, 207);
  vertex(594, 252);
   vertex(608, 275);
  vertex(625, 327);
  vertex(665, 355);
  vertex(495, 374);
   endShape();
  strokeWeight(1);
   stroke(0);
    stroke(#E34D28);
  line(486,188, 504, 214);
  line(504, 214,548, 226);
 line( 548, 226,531, 265);
  line(531, 265, 554, 282);
  line(554, 282, 536, 341);
  line(536, 341,570, 366);
  line (570, 366,525, 600);
  strokeWeight(5);
  line(400, 600, 400, 575);
  strokeWeight(1);
   
  stroke(#FFD700);
  fill(#FF4500);
  ellipse(400, 300, 200, 200);
  strokeWeight(9);
  stroke(#FFD700);
  arc(400, 300, 200, 200, angle, angle+PI);
 
  angle = angle + 0.1;
  
  dotsFlameRed();
  dotsFlameLred();
dotsFlameYellow();
dotsFlameOrange();
dotsFlameBlack();

fill(0);
strokeWeight(2);
ellipse(400, 300, 40, 150);

  drawLightningR();
  drawLightningL();

  
  
 
  noStroke();
  fill(255,69,0, 90);
triangle(447, 217,447,382,644,300);//right tri
triangle(343, 217, 350, 382, 153, 300);//left tri
fill(100);
stroke(0);
rect(300, 530, 200, 200);
beginShape();
vertex(167,300);//attached left of eye
vertex(157, 175);
vertex(127, 42);//left tip
vertex(80,270);
vertex(88,460);
vertex(150, 554);
vertex(400, 574);//bottom tip
vertex(650, 554);
vertex(712,460);
vertex(725,270);
vertex(688, 42);//right tip
vertex(648, 175);
vertex(638, 300);//attached right of eye
vertex(600, 435);
vertex(525, 448);
vertex(400, 455);
vertex(275, 448);
vertex(200, 435);
endShape(CLOSE);

stroke(#E34D28);
strokeWeight(5);
  line(400, 600, 400, 575);
  strokeWeight(1);
  stroke(0);
  drawRing();
}

void keyPressed() {
  randomize();
  drawEmb();
}
void randomize() {
  posX = posX + round(random(0, 10));
  posY = posY + round(random(0, 10));
}
void drawEmb() {
  fill(227, 77, 40);
  ellipse(random(378, 464), random(160, 193), 10, 10);
}
void drawLava() {
  fill(227, 77, 40);
  ellipse(posX, posY, 15, 15);
}

void dotsFlameRed(){
float a = random(325, 475);
float b = random(240, 360);
stroke(#8B0000);
ellipse(a,b, 15, 1);
}
void dotsFlameLred(){
float a = random(325, 475);
float b = random(240, 360);
stroke(#B22222);
ellipse(a,b, 15, 1);
}
void dotsFlameYellow(){
float a = random(325, 475);
float b = random(240, 360);
stroke(#DAA520);
ellipse(a,b, 15, 1);
}
void dotsFlameOrange(){
float a = random(325, 475);
float b = random(240, 360);
stroke(#FF8C00);
ellipse(a,b, 15, 1);
}
void dotsFlameBlack(){
float a = random(325, 475);
float b = random(240, 360);
stroke(0);
ellipse(a,b, 15, 1);
}
void drawLightningR(){
  float a = random(500, 530);
float b = random(250, 345);
float c = random(600,620);
float d = random(292,309);
stroke( #FFC128);
line(c, d, a, b);
}
void drawLightningL(){
float a = random(270, 310);
float b = random(250, 345);
float c = random(187,217);
float d = random(292,309);
stroke( #FFC128);
line(c, d, a, b);
}
void drawTorch() {
for(int z = 0; z < 50; z++) {
stroke(#E0820E);
strokeWeight(5);
point(random(width), random(382, 593));
strokeWeight(1);
}
}
void drawRing(){
noFill();
strokeWeight(4);
 stroke(#FFD700);
ellipse(mouseX, mouseY, 20, 20);

stroke(0);
strokeWeight(1);
} 
void writeText(){
  fill(#FFD700);
  textSize(42);
  text("Summon the Armies of Sauron!",100, 35);
  fill(45);
}
