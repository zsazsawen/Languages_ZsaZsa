//sound
void soundPlay() {
  
  if (mouthWidth < 14 && looping != "song1") {
    song2.stop();
    song1.loop();
    song1.rate(1.1); //my voice finally right
    looping="song1";
  } else if (mouthWidth >= 14 && looping != "song2") {
    song1.stop();
    song2.loop();
    looping= "song2";
  } 
  //println("looping: " + looping);  
}