//video
import processing.video.*;
Capture video;

//smile
import oscP5.*;
OscP5 oscP5;

SmartRobot robot;

int found;
float smileThreshold1 = 11.5;
float smileThreshold2 = 11.9;
float smileThreshold3 = 12.7;
float smileThreshold4 = 13.8;
float smileThreshold5 = 14.8;
float smileThreshold6 = 15.5;
float mouthWidth, previousMouthWidth;

PFont font;

//gif
int maxImages = 3;
int imageIndex = 0;
PImage[] gifs0 = new PImage[maxImages];
PImage[] gifs1 = new PImage[maxImages];
PImage[] gifs2 = new PImage[maxImages];
PImage[] gifs3 = new PImage[maxImages];
PImage[] gifs4 = new PImage[maxImages];
PImage[] gifs5 = new PImage[maxImages];

//sound
import processing.sound.*;
SoundFile song1;
SoundFile song2;
String looping;   

/*We need to track which song is playing. 
If the song is already playing, we don’t want to re-trigger it, 
or we’ll get the songs layering with each other. 
So I created a global variable called “looping” to keep track of it. 
I also moved the triggering of the soundPlay() from setup() to draw().
*/

//send signal to Arduino
import processing.serial.*;
Serial myPort;  // Create object from Serial class

//trigger motorControl

Boolean moving = false;
//timer
int pt = 0;
int ct = millis();


void setup() {
  size(1460, 940);

  //video
  video = new Capture(this, 640, 640, 30);
  video.start(); 

  oscP5 = new OscP5(this, 8338);
  oscP5.plug(this, "found", "/found");
  oscP5.plug(this, "mouthWidthReceived", "/gesture/mouth/width");
  try {
    robot = new SmartRobot();
  } 
  catch (AWTException e) {
  }
  font = createFont("font.otf", 34);
  textFont(font);
  textAlign(LEFT, TOP);

  //gif
  for (int i=0; i< gifs0.length; i++) {
    gifs0[i] = loadImage("gif0"+i+".gif");
    gifs1[i] = loadImage("gif1"+i+".gif");
    gifs2[i] = loadImage("gif2"+i+".gif");
    gifs3[i] = loadImage("gif3"+i+".gif");
    gifs4[i] = loadImage("gif4"+i+".gif");
    gifs5[i] = loadImage("gif5"+i+".gif");
  }
  frameRate(30);
  
  //sound
  song1 = new SoundFile(this, "ifusmiletomeiwillgiveuanything.mp3");
  song2 = new SoundFile(this, "fantasticursmileisreallybeautiful.mp3");
  
  //Serial
  String portName = Serial.list()[2]; 
  myPort = new Serial(this, portName , 9600);
  
  
 
}

void captureEvent(Capture video) {
  video.read();
}



//some parts of smile detector
public void found(int i) {
  found = i;
}
public void mouthWidthReceived(float w) {
  mouthWidth = w;
}

// all other OSC messages end up here
void oscEvent(OscMessage m) {
  if (m.isPlugged() == false) {
  }
}


void draw() {  
  background(0);
  //vedio
  image(video, 0, 180, 1460, 900);

  //smile
  if (found > 0) {
    noStroke();
    fill(mouthWidth > smileThreshold1 ? color(random(255), random(255), random(255)) : 0);
    float drawWidth = map(mouthWidth, 10, 25, 0, width);
    rect(0, 0, drawWidth, 24);
    text(nf(mouthWidth, 0, 1), drawWidth + 10, 0);

    previousMouthWidth = mouthWidth;
  }

  //gif
  if (mouthWidth > smileThreshold1) {
    image(gifs1[imageIndex], 0, 600);         //gifs1 old man
    imageIndex = (imageIndex + 1) % gifs0.length;  //**************play gif
  } 
  if (mouthWidth > smileThreshold2) {
    image(gifs4[imageIndex], -50, 130);        //gifs3 yellow
  } 
  if (mouthWidth > smileThreshold3) {
    image(gifs3[imageIndex], 0, 60);        //gifs3 Bigbang
  } 
  if (mouthWidth > smileThreshold4) {
    image(gifs2[imageIndex], 1000, 600);       //gifs2 Daft Punk
  }
  if (mouthWidth > smileThreshold5) {
    image(gifs0[imageIndex], 1000, 100);        //gifs little girl
  }
  if (mouthWidth > smileThreshold6) {
    image(gifs5[imageIndex], 600, 60);        //gifs eating man
  } else {
  }

  //sound
  soundPlay();
  

  
  //motor control
  motorControl();
  
  ct = millis();
  println("  " + ct);
}