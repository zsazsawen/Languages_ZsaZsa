
void setup(){
   size(1080, 720);
   background(255);
   frameRate(30);
}

void draw(){
   background(255);
//draw a bowknot
   fill(6, 187, 254);
   strokeWeight(8);
   quad(420, 130, 620, 250, 660, 130, 460, 250);

//head
   strokeWeight(7);
   fill(255, 240, 0);
   triangle(450, 340, 540, 200, 630, 340);

//body
   fill(251, 110, 170);
   ellipse(540, 425, 90, 160);

//left arms
   line(510, 360, 430, 410);
   line(430, 410, 510, 450);

//right arms
  line(570, 360, 620, 430);
  line(620, 430, 700, 400);

//left legs
  line(510, 490, 470, 550);
  line(470, 550, 540, 620);

//right legs
  line(560, 500, 600, 555);
  line(600, 555, 680, 580);

//mouth
  noFill();
  strokeWeight(3);
  arc(530, 305, 50, 50, 0, PI);

//draw a glasses
  strokeWeight(3);
  fill(0, 255, 168);
  rect(495, 273, 35, 22, 3);
  rect(545, 273, 35, 22, 3);

//ice cream
  strokeWeight(5);
  fill(255, 135, 46);
  triangle(695, 390, 710, 435, 725, 390);
  fill(255);
  arc(709, 390, 35, 47, PI, TWO_PI);
}