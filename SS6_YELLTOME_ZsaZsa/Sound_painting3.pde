
import processing.sound.*;

String quote = "YELL TO ME !!!";
PFont font;
float s = 200;
//class 
Snake s0;

SinOsc osc; //TriOsc; SawOsc; Pluse; SqrOsc;

AudioIn input;
Amplitude analyzer;

void setup() {
  size(1600, 800);
  
  font = createFont("font.otf", s);
  
  s0 = new Snake(50);
  
  osc = new SinOsc(this);  //TriOsc; SawOsc; Pluse; SqrOsc;
  osc.play();
  
  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  input.start();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(input);
}

void draw() {
  background(1);
  textFont(font);
 // textSize(99);
  text(quote, width/2-700, height/2);   
  
  
  s0.update(mouseX,mouseY);
  s0.display();
  
  float freq = map(mouseX, 0, width, 150, 880);
  osc.freq(freq);

}