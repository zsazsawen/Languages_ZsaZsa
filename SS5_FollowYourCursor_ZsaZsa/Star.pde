class Star{
  //for star function
  float x;
  float y;
  float radius1;
  float radius2;
  int npoints;
  //for gravity
  float speed;
  float mouseX;
  float mouseY;
  
  //constructor
  Star(float tempX, float tempY, int tempRadius1, int tempRadius2, int tempNpoints){
    x = tempX;
    y = tempY;
    radius1 = tempRadius1;
    radius2 = tempRadius2;
    npoints = tempNpoints;
  }
  
  void display(){
  //display the stars
  fill(255, 247, 16);
  stroke(250, 240, 33);
  strokeWeight(2);
  //call function star
  star(x, y, radius1, radius2, npoints);
  

    
  }

  //function star
 void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
  
  // gravity effect
  void update(){
    //add speed to location
    y += speed;
    
    //add gravity to speed
    speed += random(gravity1, gravity2);
   
    //reverse speed
    if(y > height){
      speed = speed * -0.95; 
    }
  }
 }
  
  