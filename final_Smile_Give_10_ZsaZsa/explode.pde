//cyber firework
void explode(){
  
   float r = map(sqrt(random(1)), 0, 1, 0, 250);
   float a1 = random(PI);
   float a2 = random(TWO_PI);
   float x = r * sin(a1) * cos(a2);
   float y = r * cos(a1);
   float z = r * sin(a1) * sin(a2);
   color c = color(random(360), 100, 100);
   int num = int(random(50, 100));
   
  for(int i = 0; i < num; i++){
    beams.add(new Beam(x, y, z, c));
  }
    
 
}