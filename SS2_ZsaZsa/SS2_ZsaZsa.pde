float r;
float g;
float b;
float a;
float r1;
float g1;
float b1;
float a1;
float circleSize1;
float circleSize2;

void setup() {
  size(1080, 720);
  background(random(1, 200));
  frameRate(50);
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  r1 = random(255);
  g1 = random(255);
  b1 = random(255);
  a1 = random(255);
  circleSize1 = abs(mouseX-mouseY);
  circleSize2 = abs(mouseX-width/2);
  
 
  //fill(r,g,b,a);
  noFill();
  //stroke(r1, g1, b1, a1);
  stroke(220);
  
  rectMode(CENTER);
  ellipse(width/2, height/2, circleSize1+100, circleSize2+100);
  
}

void mousePressed(){
  stroke(random(255));
  fill(r, g, b, a);
  rectMode(CENTER);
  rect(mouseX, mouseY, g/2, a/2);
  
}

void keyPressed() {
  background(random(1, 200));
}