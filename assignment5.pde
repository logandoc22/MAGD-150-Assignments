int posX = 360;
float posY =505;
int ballD = 40;
float gravity = .5;
float velocityY = 0.0;
boolean onGround = false;
boolean onFoot = false;
float jumpSize = -20;
boolean lost = false;
int score = 0;
int highScore = 0;
PImage  img;
boolean kick = false;
int legUP = 0;

void setup() {
  size(800, 600);
  img = loadImage("https://cloud.githubusercontent.com/assets/14895970/11816544/7d8adec8-a316-11e5-9082-8b7ef9fcbbd7.png");
}

void draw() {
  background(255);
  textSize(16);
  text("Juggling Game!", 475,45);
  text("Click when the ball is in the box to keep the juggle going!",300,100);
  text("TIP: hit as close to the top of the box as possible", 148, 600);
  text("At score of 5 the speed changes! WATCH OUT!",350, 130);
  line(0, height, width, height); //ground
  update();
  noFill();
  stroke(255,0,0);
  rect(350, 375,50,75);//BOX

 
 stroke(0);
  fill(44,176,55);
rect(0,500, 800, 200);
  image(img, posX-10, posY-10, ballD, ballD);
 
  image(img, posX - 10, posY -10, ballD, ballD);
  fill(200);
  
  text("TIP: hit as close to the top of the box as possible", 148, 550);
  
  

  if(kick == true) {
    //legs
   //bottom leg
    fill(255, 220, 178);
  beginShape();
  vertex(270, 420);
  vertex(275,448); //bottom knee
  vertex(265,470);
  vertex(278,475);
  vertex(294, 446);//top knee
  vertex(285, 418);
  endShape(CLOSE);
  //top leg
  fill(255, 220, 178);
  beginShape();
  vertex(311,403);
  vertex(320, 410);//top knee
  vertex(346, 447);
  vertex(331, 451);
  vertex(312, 427);//bottom knee
  vertex(280, 417);
  endShape(CLOSE);
  
  
  //sock top leg
  fill(0,0,255);
  beginShape();
  vertex(331, 451);
  vertex(346, 447);
  vertex(360,485);
  vertex(343, 498);
  endShape(CLOSE);
  
  //sock bottom leg
  
  
//top shoe
beginShape();
 fill(0);
    vertex(360, 485);
    vertex(364, 483);
    vertex(370,486);
    vertex(373, 487);
    vertex(380, 489);//top end
    vertex(381, 491);
    vertex(382,493);
    vertex(381, 495);
    
    vertex(380, 497);
    vertex(344, 497);
    vertex(341, 494);
    vertex(342, 491);
    vertex(343, 488);
    endShape(CLOSE);
    stroke(255);
    line(370,486,368, 491);
    line(373,487,373, 491);
    line(366,483,363,491);
    line(366,487,366,489);// line down center
    stroke(0);
    
    
      //bottom shoe
    beginShape();
 fill(0);
    vertex(271, 490);
    vertex(275, 488);
    vertex(281,491);
    vertex(284, 492);
    vertex(291, 494);//top end
    vertex(292, 496);
    vertex(293,498);
    vertex(292, 500);
    
    vertex(291, 502);
    vertex(255, 502);
    vertex(252, 499);
    vertex(253, 496);
    vertex(254, 493);
    endShape(CLOSE);
    stroke(255);
    line(281,491,279, 496);
    line(284,492,284, 496);
    line(277,488,274,496);
    line(277,492,277,494);// line down center
    stroke(0);
    
    // bottom sock
    fill(0,0,255);
    beginShape();
    vertex(254, 493);
    vertex(273,489);
    vertex(285, 464);
    vertex(270, 460);
    endShape(CLOSE);

 
  
  
    //shorts
   
  fill(255,0,0);
  beginShape();
  vertex(222,379);
  vertex(268,423);
  vertex(304,412);
  vertex(311,403);
  vertex(272, 374);
  endShape(CLOSE);
   stroke(0);
    strokeWeight(6);
    line(252, 385, 295, 411);
    strokeWeight(1);
    
  
  
  
    //neck and head
 fill(255, 220, 178);
  beginShape();
  vertex(232, 262);
  vertex(230,277);
  vertex(263,277);
  vertex(265,262);
  endShape();
   ellipse(252,236, 60,70);
  fill(0);
  //body
  rect(210,272, 65, 115, 40);
  
  
    //face
  line(273, 261,258, 252) ;
  fill(250);
  ellipse(273, 235, 10,10);
  fill(0,255,255);
  ellipse(273, 235, 5,5);
  fill(0);
  ellipse(273,235, .5,.5);
  //hair
  fill(153, 78, 0);
  triangle(237,209,268,209,254,186);
  
 
     
 
  }else {
      //legs
   //bottom leg
    fill(255, 220, 178);
  beginShape();
  vertex(262, 427);
  vertex(275,448); //bottom knee
  vertex(265,470);
  vertex(278,475);
  vertex(294, 446);//top knee
  vertex(275, 422);
  endShape(CLOSE);
  //top leg
  fill(255, 220, 178);
  beginShape();
  vertex(294,411);
  vertex(310, 435);//top knee
  vertex(326, 478);
  vertex(311, 482);
  vertex(290, 440);//bottom knee
  vertex(263, 425);
  endShape(CLOSE);
  
  
  //sock top leg
  fill(0,0,255);
  beginShape();
  vertex(302, 463);
  vertex(317,455);
  vertex(332,493);
  vertex(315, 498);
  endShape(CLOSE);
  
  //sock top leg
  
  
//top shoe
beginShape();
 fill(0);
    vertex(332, 493);
    vertex(336, 491);
    vertex(342,494);
    vertex(345, 495);
    vertex(352, 497);//top end
    vertex(353, 499);
    vertex(354,501);
    vertex(353, 503);
    
    vertex(352, 505);
    vertex(316, 505);
    vertex(313, 502);
    vertex(314, 499);
    vertex(315, 496);
    endShape(CLOSE);
    stroke(255);
    line(342,494,340, 499);
    line(345,495,345, 499);
    line(338,491,335,499);
    line(338,495,348,497);// line down center
    stroke(0);
    
    //bottom shoe
    beginShape();
 fill(0);
    vertex(271, 490);
    vertex(275, 488);
    vertex(281,491);
    vertex(284, 492);
    vertex(291, 494);//top end
    vertex(292, 496);
    vertex(293,498);
    vertex(292, 500);
    
    vertex(291, 502);
    vertex(255, 502);
    vertex(252, 499);
    vertex(253, 496);
    vertex(254, 493);
    endShape(CLOSE);
    stroke(255);
    line(281,491,279, 496);
    line(284,492,284, 496);
    line(277,488,274,496);
    line(277,492,277,494);// line down center
    stroke(0);
    
    // bottom sock
    fill(0,0,255);
    beginShape();
    vertex(254, 493);
    vertex(273,489);
    vertex(285, 464);
    vertex(270, 460);
    endShape(CLOSE);


 
  
  
    //shorts
   
  fill(255,0,0);
  beginShape();
  vertex(222,379);
  vertex(253,433);
  vertex(289,422);
  vertex(297,413);
  vertex(272, 374);
  endShape(CLOSE);
   stroke(0);
    strokeWeight(6);
    line(252, 385, 275, 424);
    strokeWeight(1);
  
  
 //neck and head
 fill(255, 220, 178);
  beginShape();
  vertex(232, 262);
  vertex(230,277);
  vertex(263,277);
  vertex(265,262);
  endShape();
   ellipse(252,236, 60,70);
  fill(0);
  //body
  rect(210,272, 65, 115, 40);
  
   //face
  line(273, 261,258, 252) ;
  fill(250);
  ellipse(273, 235, 10,10);
  fill(0,255,255);
  ellipse(273, 235, 5,5);
  fill(0);
  ellipse(273,235, .5,.5);
  //hair
  fill(153, 78, 0);
  triangle(237,209,268,209,254,186);
  
  }
  legUP +=1;
  if(legUP%30==0) 
kick = false;
}

void update() {
  velocityY= gravity + velocityY;
  posY = velocityY + posY;
  score();

  if ((posY -5 >= (375))&&(posY +10 <= (475))) { //foot
    onFoot = true;
  } else {
    onFoot = false;
  }

  if (posY  >= (505)-(ballD/2)) { //ground
    posY = 505-(ballD/2);
    onGround = true;
    if (score >= highScore) {
      highScore=score;
    }
    score = 0;
  }
if(score>=5) {
 gravity = .8;
}
if(score<5){
 gravity=.5; 
}
 
  println (mouseX +"," + mouseY+","+posY+","+posX);
}

void mousePressed() {
  if (onFoot==true) {
    jump();
    score++;
   kick = true; 
   onFoot=false;
  }else
  if(onGround==true){
   jump();
   onGround=false;
  }
}


void jump() {
  velocityY = jumpSize;
}



  

void score () {
  text ("score = "+score, 200, 50);
  text ("high score = "+highScore, 200, 75);
}
