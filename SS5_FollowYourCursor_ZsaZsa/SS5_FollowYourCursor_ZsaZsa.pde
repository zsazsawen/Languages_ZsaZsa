/**
 * Scratch 
 * by Andres Colubri. 
 * 
 * Move the cursor horizontally across the screen to set  
 * the position in the movie file.
 */

import processing.video.*;

Movie mov;

Star[] stars = new Star[5];
  float gravity1 = 0.5;
  float gravity2 = 0.18;
  
void setup() {
  size(960, 540);
  background(0);

  mov = new Movie(this, "hey.mov");

  // Pausing the video at the first frame. 
  mov.play();
  mov.jump(0);
  mov.pause();
 for(int i=0; i < stars.length; i++) {
  stars[i] = new Star(random(600,880), random(0,400), 30, 70, 5);
  }
}

void draw() {

  if (mov.available()) {
    mov.read();
    // A new time position is calculated using the current mouse location:
    float f = map(mouseX, 0, width, 0, 1);
    float t = mov.duration() * f;
    mov.play();
    mov.jump(t);
    mov.pause();
  }  

  image(mov, 0, 0);
  
  for(int i=0; i < stars.length; i++){
     stars[i].update();
     stars[i].display();
  }
  
  
}