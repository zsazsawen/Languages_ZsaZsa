//smile
import oscP5.*;
OscP5 oscP5;

SmartRobot robot;

int found;
float mouthWidth, previousMouthWidth;
float hit = 17.5;
float harder1 = 14.7;
float harder2 = 15.8;

//movie loop
import processing.video.*;
Movie movie;

//nocandy 
String state = "candy";

//cyber firework
ArrayList<Beam> beams;


//gif
int maxImages = 3;
int imageIndex = 0;
PImage[] gifs0 = new PImage[maxImages];
PImage[] gifs1 = new PImage[maxImages];
PImage[] gifs2 = new PImage[maxImages];
PImage[] gifs3 = new PImage[maxImages];
PImage[] gifs4 = new PImage[maxImages];
PImage[] gifs5 = new PImage[maxImages];
PImage[] gifs6 = new PImage[maxImages];
PImage[] gifs7 = new PImage[maxImages];

//coming pic
PImage coming;
PImage nocandy;

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

//text
String quote = "HARDER";
PFont font1, font2;
float size1 = 150 ;
float size2 = 100 ;


//send signal to Arduino
import processing.serial.*;
Serial myPort;  // Create object from Serial class

//trigger motorControl
Boolean jobDone = false;

void setup() {
  fullScreen(P3D);
  
  //cyber firework
  colorMode(HSB, 360, 100, 100);
  beams = new ArrayList<Beam>();
  
  //text
  font1 = createFont("font.ttf", size1);
  font2 = createFont("font.ttf", size2);
  
  oscP5 = new OscP5(this, 8338);
  oscP5.plug(this, "found", "/found");
  oscP5.plug(this, "mouthWidthReceived", "/gesture/mouth/width");
  try {
    robot = new SmartRobot();
  } 
  catch (AWTException e) {
  }

  //movie
  movie = new Movie(this, "p1.mp4");

  //gif
  for (int i=0; i< gifs0.length; i++) {
    gifs0[i] = loadImage("gif0"+i+".gif");
    gifs1[i] = loadImage("gif1"+i+".gif");
    gifs2[i] = loadImage("gif2"+i+".gif");
    gifs3[i] = loadImage("gif3"+i+".gif");
    gifs4[i] = loadImage("gif4"+i+".gif");
    gifs5[i] = loadImage("gif5"+i+".gif");
    gifs6[i] = loadImage("gif6"+i+".gif");
    gifs7[i] = loadImage("gif7"+i+".gif");
  }

  //coming pic
  coming = loadImage("coming.png");
  nocandy = loadImage("nocandy.png");
  
  //sound
  song1 = new SoundFile(this, "ifusmiletomeiwillgiveuanything.mp3");
  song2 = new SoundFile(this, "fantasticursmileisreallybeautiful.mp3");
  
  
  //Serial
  String portName = Serial.list()[0]; 
  myPort = new Serial(this, portName , 9600);
  

  
}

void movieEvent(Movie m) {
  m.read();
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

  //motor control
  motorControl();

  //movie
  movie_gif_pic_Play();
  
  

  //sound
  soundPlay();
  
  //text
  textShow();
  
  //cyber firework
  if (mouthWidth > harder1){
   explode(); 
  }
  
  translate(width / 2, height / 2);
  rotateX(frameCount * 0.002);
  rotateY(frameCount * 0.003);
  rotateZ(frameCount * 0.005);
  ArrayList<Beam> nextBeams = new ArrayList<Beam>();
  for(Beam b: beams){
    b.display();
    b.update();
    if(!b.isDead()){
      nextBeams.add(b);
    }
  }
  beams = nextBeams;
  
}