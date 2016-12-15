//sound
void soundPlay(){
  
  if (mouthWidth < hit && looping != "song1") {
    
    song2.stop();
    song1.loop();
    song1.rate(1.1); //my voice finally right
    looping="song1";
    
  } else if (mouthWidth >= hit - 0.4 && looping != "song2") {
    
    song1.stop();
    song2.loop();
    looping= "song2";
  } 
  //println("looping: " + looping);  
}