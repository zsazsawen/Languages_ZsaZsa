class Stripe{
  float x;
  float y;
  float w;
  float speed;
  boolean on;
  color c;
  
  Stripe(){
    x = 0;
    y = height;
    w = random(5,77);
    speed = random(8);
    on = false;
    c = color(random(0,255),random(0,255),random(0,255));
  }
  
  void display(){
    if(on){
      fill(c,200);
    } else {
      fill(253,39,65,30);
    }
    
    noStroke();
    rect(x, 0, w, y);
  }
  
  void move(){
    x += speed;
    if(x > width){
    x = -30;}
  }
  
  void rollover(int mx, int my){
    if(mx < x +w && mx > x ){
      on = true;
    } else {
      on = false; 
    }
  }
  
}