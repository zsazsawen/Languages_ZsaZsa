class Beam{
    
  PVector end1, end2, vel;
  float span;
  int life;
  color col;
  
  Beam(float x, float y, float z, color c){
    end1 = new PVector(x, y, z);
    end2 = new PVector(x, y, z);
    vel = new PVector(random(-1, 1), random(-1, 1), random(-1, 1));
    vel.normalize();
    float velSize = random(2, 10);
    vel.mult(velSize);
    span = random(30, 60);
    life = int(random(50, 200));
    col = c; 
  }
  
  void display(){
    if ( mouthWidth >= 15.2 && mouthWidth <= 19 ){
    stroke(col);
    line(end1.x, end1.y, end1.z,  end2.x, end2.y, end2.z);
   } 
  }
  
  void update(){
    if(life > 0){
      if(PVector.dist(end1, end2) < span){
        end1.add(vel);
      } else {
        end1.add(vel);
        end2.add(vel);
      }
      life--;
    } else {
      end2.add(vel);
    }
  }
    boolean isDead(){
    return life == 0 && PVector.dist(end1, end2) <= vel.mag();
  }
  
}