// Exercise 9-7: Snake Class

class Snake {
  // x and y positions
  int[] xpos;
  int[] ypos;

  // The constructor determines the length of the snake
  Snake(int n) {
    xpos = new int[n];
    ypos = new int[n];
  }

  void update(int newX, int newY) {
    // Shift all elements down one spot. 
    // xpos[0] = xpos[1], xpos[1] = xpos = [2], and so on. Stop at the second to last element.
    for (int i = 0; i < xpos.length-1; i ++ ) {
      xpos[i] = xpos[i+1]; 
      ypos[i] = ypos[i+1];
    }

    // Update the last spot in the array with the mouse location.
    xpos[xpos.length-1] = newX; 
    ypos[ypos.length-1] = newY;
  }

  void display() {
    // Draw everything
    for (int i = 0; i < xpos.length; i ++ ) {
      // Draw an ellipse for each element in the arrays. 
      // Color and size are tied to the loop's counter: i.
      noStroke();
      fill(255-i*5);
    
        // Get the overall volume (between 0 and 1.0)
  float vol = analyzer.analyze();
  fill(random(200),10+vol*200,random(200));
  noStroke();

  // Draw an ellipse with size based on volume
  ellipse(mouseX, mouseY, 10+vol*500, 10+vol*500);
  ellipse(xpos[i], ypos[i], 10+vol*500, 10+vol*500); 
  
    }

  }

}