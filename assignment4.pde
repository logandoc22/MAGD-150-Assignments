PImage img1;
PImage img2;

Boolean state = false;

boolean bulb = false;

void setup() {
  size(1280, 800);
  background(0);

  imageMode(CORNERS);
}

void draw() {

  background(0, 0, 0);

  //changes picutre back and forth, picture 2 is potato and picture 1 is old man
  if (state) {
    img2 = loadImage ("https://cloud.githubusercontent.com/assets/14895970/11695361/5bf7a49a-9e74-11e5-847e-62ce4ee85a6a.jpg");
    image(img2, 440, 142, 860, 658);
    
     //frame
     fill(random(255), random(255), random(255));
    rect(400, 102, 499, 40);
    rect(400, 142, 40, 514);
    rect(859, 142, 40, 514);
    rect(400, 655, 499, 50);

    //lightbulb
    if (bulb) {
      //left right bulb
      noStroke();
      fill(255, 255, 102);
      ellipse(182, 382, 100, 100);
      rect(160, 410, 40, 30);
      fill(192);
      rect(150, 438, 60, 70, 20);

      stroke(0);
      line(173, 438, 167, 392);
      line(187, 438, 197, 392);
      line(197, 392, 190, 397);
      line(190, 397, 186, 390);
      line(186, 390, 184, 392);
      line(184, 392, 167, 392);
      
         stroke(255, 255, 102);
      strokeWeight(7);
      line(110,312,130,336);
      line(260,312,240, 336);
      line(240,425, 260, 448);
      line(130,425, 110, 448);
      stroke(1);
      strokeWeight(1);
      //lines on lightbulbs

      line(150, 440, 210, 444);
      line(150, 450, 210, 454);
      line(150, 460, 210, 464);
      line(150, 470, 210, 474);
      line(150, 480, 210, 484);
      line(150, 490, 210, 494);
      line(150, 500, 210, 504);
      //right light bulb
      stroke(0);
      fill(255, 255, 102);
      rect(1060, 410, 40, 30);
      stroke(255, 255, 102);
      ellipse(1082, 382, 100, 100);
      fill(192);
      noStroke();
      rect(1050, 438, 60, 70, 20);

      stroke(0);
      line(1073, 438, 1067, 392);
      line(1087, 438, 1097, 392);
      line(1097, 392, 1090, 397);
      line(1090, 397, 1086, 390);
      line(1086, 390, 1084, 392);
      line(1084, 392, 1067, 392);
      //lines on lightbulbs

      line(1050, 440, 1110, 444);
      line(1050, 450, 1110, 454);
      line(1050, 460, 1110, 464);
      line(1050, 470,1110, 474);
      line(1050, 480, 1110, 484);
      line(1050, 490,1110, 494);
      line(1050, 500, 1110, 504);
      
      stroke(255, 255, 102);
      strokeWeight(7);
      line(1010,312,1030,336);
      line(1160,312,1140, 336);
      line(1140,425, 1160, 448);
      line(1030,425, 1010, 448);
      stroke(1);
      strokeWeight(1);
    } else {
     //left light bulb
      stroke(0);
      fill(255);
      rect(160, 410, 40, 30);
      stroke(255);
      ellipse(182, 382, 100, 100);
      fill(192);
      noStroke();
      rect(150, 438, 60, 70, 20);

      stroke(0);
      line(173, 438, 167, 392);
      line(187, 438, 197, 392);
      line(197, 392, 190, 397);
      line(190, 397, 186, 390);
      line(186, 390, 184, 392);
      line(184, 392, 167, 392);
      //lines on lightbulbs

      line(150, 440, 210, 444);
      line(150, 450, 210, 454);
      line(150, 460, 210, 464);
      line(150, 470, 210, 474);
      line(150, 480, 210, 484);
      line(150, 490, 210, 494);
      line(150, 500, 210, 504);
      
      
      //right light bulb
      stroke(0);
      fill(255);
      rect(1060, 410, 40, 30);
         stroke(255);
      ellipse(1082, 382, 100, 100);
      fill(192);
      noStroke();
      rect(1050, 438, 60, 70, 20);

      stroke(0);
      line(1073, 438, 1067, 392);
      line(1087, 438, 1097, 392);
      line(1097, 392, 1090, 397);
      line(1090, 397, 1086, 390);
      line(1086, 390, 1084, 392);
      line(1084, 392, 1067, 392);
      //lines on lightbulbs

      line(1050, 440, 1110, 444);
      line(1050, 450, 1110, 454);
      line(1050, 460, 1110, 464);
      line(1050, 470,1110, 474);
      line(1050, 480, 1110, 484);
      line(1050, 490,1110, 494);
      line(1050, 500, 1110, 504);
    }

    fill(255);
    textSize(70);

    text("Potatoes have skin. I have skin.", 100, 60);
    text("Therefor, I am a potato", 200, 770);
    println (mouseX +"," + mouseY);
  } else {
    img1 = loadImage ("https://cloud.githubusercontent.com/assets/14895970/11695262/e6d67650-9e73-11e5-86ee-2645f79d380a.jpg");
    image(img1, 440, 142, 860, 658);

    //frame
    rect(400, 102, 499, 40);
    rect(400, 142, 40, 514);
    rect(859, 142, 40, 514);
    rect(400, 655, 499, 50);

    //lightbulb
    if (bulb) {
      //left right bulb
      noStroke();
      fill(255, 255, 102);
      ellipse(182, 382, 100, 100);
      rect(160, 410, 40, 30);
      fill(192);
      rect(150, 438, 60, 70, 20);

      stroke(0);
      line(173, 438, 167, 392);
      line(187, 438, 197, 392);
      line(197, 392, 190, 397);
      line(190, 397, 186, 390);
      line(186, 390, 184, 392);
      line(184, 392, 167, 392);
      
         stroke(255, 255, 102);
      strokeWeight(7);
      line(110,312,130,336);
      line(260,312,240, 336);
      line(240,425, 260, 448);
      line(130,425, 110, 448);
      stroke(1);
      strokeWeight(1);
      //lines on lightbulbs

      line(150, 440, 210, 444);
      line(150, 450, 210, 454);
      line(150, 460, 210, 464);
      line(150, 470, 210, 474);
      line(150, 480, 210, 484);
      line(150, 490, 210, 494);
      line(150, 500, 210, 504);
      //right light bulb
      stroke(0);
      fill(255, 255, 102);
      rect(1060, 410, 40, 30);
      stroke(255, 255, 102);
      ellipse(1082, 382, 100, 100);
      fill(192);
      noStroke();
      rect(1050, 438, 60, 70, 20);

      stroke(0);
      line(1073, 438, 1067, 392);
      line(1087, 438, 1097, 392);
      line(1097, 392, 1090, 397);
      line(1090, 397, 1086, 390);
      line(1086, 390, 1084, 392);
      line(1084, 392, 1067, 392);
      //lines on lightbulbs

      line(1050, 440, 1110, 444);
      line(1050, 450, 1110, 454);
      line(1050, 460, 1110, 464);
      line(1050, 470,1110, 474);
      line(1050, 480, 1110, 484);
      line(1050, 490,1110, 494);
      line(1050, 500, 1110, 504);
      
      stroke(255, 255, 102);
      strokeWeight(7);
      line(1010,312,1030,336);
      line(1160,312,1140, 336);
      line(1140,425, 1160, 448);
      line(1030,425, 1010, 448);
      stroke(1);
      strokeWeight(1);
    } else {
     //left light bulb
      stroke(0);
      fill(255);
      rect(160, 410, 40, 30);
      stroke(255);
      ellipse(182, 382, 100, 100);
      fill(192);
      noStroke();
      rect(150, 438, 60, 70, 20);

      stroke(0);
      line(173, 438, 167, 392);
      line(187, 438, 197, 392);
      line(197, 392, 190, 397);
      line(190, 397, 186, 390);
      line(186, 390, 184, 392);
      line(184, 392, 167, 392);
      //lines on lightbulbs

      line(150, 440, 210, 444);
      line(150, 450, 210, 454);
      line(150, 460, 210, 464);
      line(150, 470, 210, 474);
      line(150, 480, 210, 484);
      line(150, 490, 210, 494);
      line(150, 500, 210, 504);
      
      
      //right light bulb
      stroke(0);
      fill(255);
      rect(1060, 410, 40, 30);
         stroke(255);
      ellipse(1082, 382, 100, 100);
      fill(192);
      noStroke();
      rect(1050, 438, 60, 70, 20);

      stroke(0);
      line(1073, 438, 1067, 392);
      line(1087, 438, 1097, 392);
      line(1097, 392, 1090, 397);
      line(1090, 397, 1086, 390);
      line(1086, 390, 1084, 392);
      line(1084, 392, 1067, 392);
      //lines on lightbulbs

      line(1050, 440, 1110, 444);
      line(1050, 450, 1110, 454);
      line(1050, 460, 1110, 464);
      line(1050, 470,1110, 474);
      line(1050, 480, 1110, 484);
      line(1050, 490,1110, 494);
      line(1050, 500, 1110, 504);
    }

    fill(255);
    textSize(70);

    text("Potatoes have skin. I have skin.", 100, 60);
    text("Therefor, I am a potato", 200, 770);
    println (mouseX +"," + mouseY);
  }
}

  void mousePressed() {
    state = !state;
  }
void keyPressed() {
  bulb = !bulb;
}
