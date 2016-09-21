 float r = random(0,255); 
float g = 45; 
float b = 100; 

float h = random(0,255);
float s = 95;
float k = 100;

float p = random(10,100);

float x = -15;
float y = 0;

float wid = 10;
float hei = height;

float mouseSpeed;

void setup(){
  size(1080,1080);
  background(0);
  colorMode(HSB, 100);
}

void draw(){
  
  for(int f= 0; f<= 1.5*height; f= f+225){
    line(0, f, width, f);
  }
  
  fill(h, s, k, p);
  rect(x, y, wid, hei);
//rec move
  x = x+0.5;
  if(x>1080){
    x= -15;
  }
  
  if(hei > 20){
    hei= hei -10;
  }else {
    hei= hei + 1000; 
  }
  
//color
  if(mouseX>= pmouseX && mouseY >= pmouseY){
      h= h - 1;
  }else if(mouseX< pmouseX && mouseY < pmouseY){
      h= h + 1;
}
  if(h < 0 && h > 255 ){
     h = random(100,200);
  }
}

//move
void mouseMoved(){
  mouseSpeed= abs(pmouseX - mouseX);
  stroke(r,g,b);
  strokeWeight(mouseSpeed);
  line(mouseX, mouseY, pmouseX, pmouseY);
    r = r - random(0,3);
   if(r <0 ){
    r = random(0,255);
  }
}

//drag
void mouseDragged(){
  line(width/2, height/2, mouseX, mouseY);
  stroke(r, g, b);
  strokeWeight(random(0,20));
  r = r - random(0,3);
}

void keyPressed(){
  background(0);
}