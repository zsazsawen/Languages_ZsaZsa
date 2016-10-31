//Zsa Zsa newChineseFlag
//arry of class Star and 5 stars on Chinese flag
Star[] stars = new Star[5];
Stripe[] stripes = new Stripe[100];
  float gravity1 = 0.5;
  float gravity2 = 0.18;
  
void setup() {
  size(1200, 800);
  
  //initialize array
  for(int i=0; i < stars.length; i++){
    //give stars data
    //translate(random(30), random(20), -50);
    stars[i] = new Star(random(110,330), random(80,260), 30, 70, 5);
  }
  
  for(int i=0; i < stripes.length; i++){
    stripes[i] = new Stripe();
  }
}

void draw() {
  background(243,49,75);
 
  
  if(mouseX <= width/2 && mouseY <= height * 0.7){
  //methods of stars
  for(int i=0; i < stars.length; i++){
     stars[i].update();
     stars[i].display();
  }
  }else if(mouseX < width && mouseY < height){
  // move and display all Stripe objects
  for(int i=0; i < stripes.length; i++){
    stripes[i].display();
    stripes[i].move();
    stripes[i].rollover(mouseX, mouseY);
  }
  }
}