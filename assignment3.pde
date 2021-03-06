void setup() {
  size(1280, 800);
  background(255);
  fill(255,0,0);
 
  
}
void draw() {
  background(30);
  fill(220); 
  stroke(1);  
  fill(210,105,30);
  noStroke();
    //planet
   ellipse(800,400, 200,200);
 
  
//makes X and Y to follow the mouse.
  int X= mouseX;
  int Y=mouseY;
  noStroke();
  fill(0);
//creates death star
  ellipse(X, Y, 300, 300);
  fill(220);
  //white CUBES
  rect(X+120, Y, 30, 10);
  rect(X-150, Y, 30, 10);
  fill(110);
  stroke(0);
  arc(X, Y+10, 300, 300, 0, PI);
  arc(X, Y, 300, 300, PI, TWO_PI);

  //TOP!!
  fill(130);
  rect(X, Y-20, 60, 20);
  rect(X-100, Y-20, 50, 20);

  beginShape();
  vertex(X-130, Y-20);
  vertex(X-130, Y);
  vertex(X-150, Y);
  vertex(X-149, Y-20);
  endShape(CLOSE);
  rect(X+110, Y-20, 30, 20);

  beginShape();
  vertex(X+60, Y-20);
  vertex(X, Y-20);
  vertex(X-3, Y-60);
  vertex(X+40, Y-60);
  endShape(CLOSE);

  beginShape();
  vertex(X+125, Y-60);
  vertex(X+138, Y-60);
  vertex(X+148, Y-20);
  vertex(X+130, Y-20);
  endShape(CLOSE);

  beginShape();
  vertex(X-77, Y-60);
  vertex(X-127, Y-60);
  vertex(X-130, Y-20);
  vertex(X-80, Y-20);
  endShape(CLOSE);

  beginShape();
  vertex(X-34, Y-110);
  vertex(X-94, Y-110);
  vertex(X-126, Y-60);
  vertex(X-36, Y-60);
  endShape(CLOSE);

  beginShape();
  vertex(X, Y-110);
  vertex(X-3, Y-60);
  vertex(X+124, Y-60);
  vertex(X+107, Y-104);
  endShape(CLOSE);

  beginShape();
  vertex(X-15, Y-110);
  vertex(X-12, Y-132);
  vertex(X-60, Y-132);
  vertex(X-63, Y-110);
  endShape();

  beginShape();
  vertex(X-80, Y-110);
  vertex(X-102, Y-110);
  vertex(X-70, Y-132);
  endShape(CLOSE);







  //SPLIT

  fill(190);
  rect(X-50, Y-20, 50, 20);
  rect(X-130, Y-20, 30, 20);
  rect(X+60, Y-20, 50, 20);

  beginShape();
  vertex(X+139, Y-20);
  vertex(X+149, Y-20);
  vertex(X+150, Y);
  vertex(X+140, Y);
  endShape(CLOSE);

  beginShape();
  vertex(X-80, Y-20);
  vertex(X, Y-20);
  vertex(X-3, Y-60);
  vertex(X-77, Y-60);
  endShape(CLOSE);

  beginShape();
  vertex(X+125, Y-60);
  vertex(X+60, Y-60);
  vertex(X+60, Y-20);
  vertex(X+130, Y-20);
  endShape(CLOSE);

  line(X+112, Y-60, X+116, Y-20);

  beginShape();
  vertex(X-130, Y-20);
  vertex(X-149, Y-20);
  vertex(X-138, Y-60);
  vertex(X-128, Y-60);
  endShape(CLOSE);

  beginShape();
  vertex(X-37, Y-60);
  vertex(X-3, Y-60);
  vertex(X, Y-110);
  vertex(X-34, Y-110);
  endShape(CLOSE);

  beginShape();
  vertex(X-137, Y-60);
  vertex(X-126, Y-60);
  vertex(X-94, Y-110);
  vertex(X-104, Y-110);
  endShape();

  triangle(X+108, Y-105, X+116, Y-60, X+137, Y-60);

  beginShape();
  vertex(X-15, Y-110);
  vertex(X+80, Y-110);
  vertex(X+70, Y-132);
  vertex(X-12, Y-132);
  endShape(CLOSE);

  beginShape();
  vertex(X-60, Y-132);
  vertex(X-63, Y-110);
  vertex(X-80, Y-110);
  vertex(X-70, Y-132);
  endShape(CLOSE);

  fill(0);
  rect(X-142, Y-45, 10, 5, 2);
  rect(X-145, Y-35, 10, 5, 2);
  rect(X-90, Y-90, 40, 5, 2);



  
stroke(0);
  //noStroke();
  fill(160);
  ellipse(X+62, Y-68, 100, 100);
  stroke(220);
  ellipse(X+62, Y-68, 70, 70);
  fill(100);
  ellipse(X+60, Y-65, 25, 25);
  fill(190);
 
 



  stroke(0);
  fill(190);


  rect(X, Y+10, 60, 20);
  fill(130);
  rect(X-50, Y+10, 60, 20);
  rect(X-100, Y+10, 60, 20);
  rect(X+60, Y+10, 60, 20);

  beginShape();
  vertex(X-40, Y+30);
  vertex(X+30, Y+30);
  vertex(X+27, Y+80);
  vertex(X-37, Y+80);
  endShape();

  fill(190);
  beginShape();
  vertex(X-40, Y+30);
  vertex(X-37, Y+80);
  vertex(X-67, Y+80);
  vertex(X-70, Y+30);
  endShape();

  beginShape();
  vertex(X-70, Y+30);
  vertex(X-67, Y+80);
  vertex(X-105, Y+80);
  vertex(X-108, Y+30);
  endShape();

  beginShape();
  vertex(X+62, Y+30);
  vertex(X+30, Y+30);
  vertex(X+27, Y+80);
  vertex(X+59, Y+80);
  endShape();

  fill(130);
  beginShape();
  vertex(X+62, Y+30);
  vertex(X+130, Y+30);
  vertex(X+125, Y+80);
  vertex(X+59, Y+80);
  endShape();

  fill(190);
  beginShape();
  vertex(X+77, Y+47);
  vertex(X+114, Y+47);
  vertex(X+111, Y+68);
  vertex(X+74, Y+68);
  vertex(X+77, Y+47);
  endShape();

  beginShape();
  vertex(X+65, Y+80);
  vertex(X+110, Y+80);
  vertex(X+107, Y+110);
  vertex(X+60, Y+110);
  vertex(X+65, Y+80);
  endShape();

  beginShape();
  vertex(X-70, Y+80);
  vertex(X-43, Y+80);
  vertex(X-40, Y+110);
  vertex(X-67, Y+110);
  endShape(CLOSE);

  fill(130);
  beginShape();
  vertex(X-43, Y+80);
  vertex(X+65, Y+80);
  vertex(X+60, Y+110);
  vertex(X-40, Y+110);
  endShape(CLOSE);


  beginShape();
  vertex(X-133, Y+80);
  vertex(X-112, Y+110);
  vertex(X-95, Y+110);
  vertex(X-114, Y+80);
  endShape(CLOSE);

  beginShape();
  vertex(X-112, Y+80);
  vertex(X-95, Y+110);
  vertex(X-66, Y+110);
  vertex(X-69, Y+80);
  endShape(CLOSE);

  beginShape();
  vertex(X+108, Y+80);
  vertex(X+132, Y+80);
  vertex(X+112, Y+110);
  vertex(X+106, Y+110);
  endShape(CLOSE);

  fill(190);
  beginShape();
  vertex(X+112, Y+110);
  vertex(X+33, Y+110);
  vertex(X+30, Y+136);
  vertex(X+82, Y+136);
  endShape(CLOSE);

  fill(0);
  rect(X+50, Y+120, 40, 5, 2);
  fill(130);
  beginShape();
  vertex(X+33, Y+110);
  vertex(X+30, Y+136);
  vertex(X-17, Y+136);
  vertex(X-20, Y+110);
  endShape(CLOSE);

  fill(190);
  beginShape();
  vertex(X-17, Y+136);
  vertex(X-20, Y+110);
  vertex(X-70, Y+110);
  vertex(X-54, Y+136);
  endShape(CLOSE);

  fill(130);
  beginShape();
  vertex(X-54, Y+136);
  vertex(X-70, Y+110);
  vertex(X-112, Y+110);
  vertex(X-80, Y+136);
  endShape(CLOSE);

  line(X-22, Y+158, X-2, Y+136);
  //TOP!


  line(X+62, Y+30, X+59, Y+80);

  line(X-150, Y+30, X+150, Y+30);


  fill(0);
  rect(X-30, Y+40, 50, 10, 2);

//when mouse press, the lazers come up but only adds the final lazer if you are in line with the planet
  if (mousePressed) {
    stroke(57, 255, 20);
    strokeWeight(4);
    line(X+12, Y-72, X+131, Y-82);
    line(X+33, Y-28, X+131, Y-82);
    line(X+49, Y-115, X+131, Y-82);
    line(X+104, Y-90, X+131, Y-82);
    line(X+104, Y-42, X+131, Y-82);
    line(X+62,Y-66, X+131, Y-82);
    
    if( ( ( mouseX<=700 ) && ( mouseY > 300)  && (mouseY <500))){
      
    
    line(X+131,Y-82,800, 400);
    strokeWeight(1);
    }
    //creates when you press a key that blows up the planet
    if(keyPressed) {
      stroke(57, 255, 20);
    strokeWeight(6);
       line(X+12, Y-72, X+131, Y-82);
    line(X+33, Y-28, X+131, Y-82);
    line(X+49, Y-115, X+131, Y-82);
    line(X+104, Y-90, X+131, Y-82);
    line(X+104, Y-42, X+131, Y-82);
    line(X+62,Y-66, X+131, Y-82);
    line(X+131,Y-82,800, 400);
      strokeWeight(1);
      for(int x = 0; x<=.25; x++) {
    stroke(210,105,10);
    strokeWeight(30);
   point(random(width),random(height)); 
   strokeWeight(1);
   fill(30);
   stroke(30);
   ellipse(800,400,250,250);
   fill(255,255,0);
   textSize(40);
   text("Boom", 750, 400);
   
   
     
  }
  }
   
 
  
  

      
  }
//creates stars
  for(int x = 0; x<=100; x++) {
    stroke(255);
    strokeWeight(2);
   point(random(width),random(height)); 
   strokeWeight(1);
  }
 
  println (mouseX +"," + mouseY);

}
