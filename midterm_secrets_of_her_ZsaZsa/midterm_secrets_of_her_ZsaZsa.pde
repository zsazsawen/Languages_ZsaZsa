String quote0 = "A long time ago, in a galaxy far, far away. There was a girl who has some secrets and lies. Point the truths out and avoid the lies.";
String quote1_1 ="She doesn’t talk too much. ";
String quote1_2 ="She fears dark. ";
String quote1_3 ="She likes candy. ";
String quote2_1 ="She cheated on her boyfriend. ";
String quote2_2 ="She loves unicorn. ";
String quote2_3 ="She can’t sleep very well. ";
String quote3_1 ="She dances in the restrooms sometimes. ";
String quote3_2 ="She has many friends. ";
String quote3_3 ="She doesn’t like to eat cheese. ";
String quote4_1 ="She laughs often. ";
String quote4_2 ="She eats a lot.";
String quote4_3 ="She cries often. ";
String quote5_1 ="Her never keep pets, because she wants to take responsibility for what she keeps without spur-of-the-moment decision. ";
String quote5_2 ="She wants open relationship. ";
String quote5_3 ="Her ex-girlfriend was a mature girl. ";
String quote6_1 ="She loves her parents even sometimes she hates them. ";
String quote6_2 ="She quarrels a lot with her mother.";
String quote6_3 ="She fights a lot with her father. ";
String quote7_1 ="She steals something from supermarket. ";
String quote7_2 ="She doesn’t want a grave. ";
String quote7_3 ="She like white more than black. ";

String quoteEnd ="You don’t know her.  She decides to let you go.  Bye.";
String quoteLove ="You have seen her heart. She let me deliver this message to you: My dear, guess how much I love you…";
String quoteLove_1 ="Like the Moon likes the Earth and you are surrounded by me forever.Like frog likes princess and I never has chance to touch you.";
String quoteLove_2 ="Like bird likes sky and I can’t never live without you.Like piano likes music score and I always follow the steps of you.";

PFont font_1_1, font_1_2, font_1_3;
PFont font_2_1, font_2_2, font_2_3;
PFont font_3_1, font_3_2, font_3_3;
PFont font_4_1, font_4_2, font_4_3;
PFont font_5_1, font_5_2, font_5_3;
PFont font_6_1, font_6_2, font_6_3;
PFont font_7_1, font_7_2, font_7_3;
PFont font_0, font_8, font_love1, font_love2;

int page = 1;

float rectX_1_1, rectY_1_1, rectX_1_2, rectY_1_2, rectX_1_3, rectY_1_3;      // Position of square buttons page1
float rectX_2_1, rectY_2_1, rectX_2_2, rectY_2_2, rectX_2_3, rectY_2_3;      // Position of square buttons page2
float rectX_3_1, rectY_3_1, rectX_3_2, rectY_3_2, rectX_3_3, rectY_3_3;      // Position of square buttons page3
float rectX_4_1, rectY_4_1, rectX_4_2, rectY_4_2, rectX_4_3, rectY_4_3;      // Position of square buttons page4
float rectX_5_1, rectY_5_1, rectX_5_2, rectY_5_2, rectX_5_3, rectY_5_3;      // Position of square buttons page5
float rectX_6_1, rectY_6_1, rectX_6_2, rectY_6_2, rectX_6_3, rectY_6_3;      // Position of square buttons page6
float rectX_7_1, rectY_7_1, rectX_7_2, rectY_7_2, rectX_7_3, rectY_7_3;      // Position of square buttons page7
float rectSizew = 400; 
float rectSizeh = 300;    

color rectColor; 
color baseColor = color(0);
color rectHighlight;

boolean button_1 = false;
boolean button_2 = false;
boolean button_3 = false;



void setup(){
  size(2220,1350);
  colorMode(HSB,100);
  rectColor = color(60,100,10);
  rectHighlight = color(55,70,20);
  
  font_0 = createFont("font_0.otf",22);
  font_1_1 = createFont("font_1_1.ttf",24);
  font_1_2 = createFont("font_1_2.ttf",35);
  font_1_3 = createFont("font_1_3.ttf",40);
  font_2_1 = createFont("font_2_1.ttf",60);
  font_2_2 = createFont("font_2_2.ttf",70);
  font_2_3 = createFont("font_2_3.ttf",80);
  font_3_1 = createFont("font_3_1.otf",60);
  font_3_2 = createFont("font_3_2.ttf",50);
  font_3_3 = createFont("font_3_3.otf",40);
  font_4_1 = createFont("font_4_1.ttf",65);
  font_4_2 = createFont("font_4_2.otf",30);
  font_4_3 = createFont("font_4_3.ttf",35);
  font_5_1 = createFont("font_5_1.otf",23);
  font_5_2 = createFont("font_5_2.ttf",40);
  font_5_3 = createFont("font_5_3.ttf",40);
  font_6_1 = createFont("font_6_1.ttf",32);
  font_6_2 = createFont("font_6_2.otf",30);
  font_6_3 = createFont("font_6_3.TTF",40);
  font_7_1 = createFont("font_7_1.ttf",42);
  font_7_2 = createFont("font_7_2.ttf",60);
  font_7_3 = createFont("font_7_3.ttf",25);
  font_8 = createFont("font_8.otf",35);
  font_love1 = createFont("font_love1.ttf",30);
  font_love2 = createFont("font_love2.otf",30);
   
  rectX_1_1 = random(0, rectX_1_2-400);
  rectY_1_1 = random(180, 820);
  rectX_1_2 = random(500, 1200);
  rectY_1_2 = random(0, 820);
  rectX_1_3 = random(rectX_1_2+400, 1800);
  rectY_1_3 = random(80, 820);
  rectX_2_1 = random(0, rectX_2_2-360);
  rectY_2_1 = random(180, 820);
  rectX_2_2 = random(500, 1200);
  rectY_2_2 = random(0, 820);
  rectX_2_3 = random(rectX_2_2+400, 1800);
  rectY_2_3 = random(80, 820);
  rectX_3_1 = random(0, rectX_3_2-400);
  rectY_3_1 = random(180, 820);
  rectX_3_2 = random(500, 1200);
  rectY_3_2 = random(0, 820);
  rectX_3_3 = random(rectX_3_2+400, 1800);
  rectY_3_3 = random(80, 820);
  rectX_4_1 = random(0, rectX_4_2-400);
  rectY_4_1 = random(180, 820);
  rectX_4_2 = random(500, 1200);
  rectY_4_2 = random(0, 820);
  rectX_4_3 = random(rectX_4_2+360, 1800);
  rectY_4_3 = random(80, 820);
  rectX_5_1 = random(0, rectX_5_2-400);
  rectY_5_1 = random(180, 820);
  rectX_5_2 = random(500, 1200);
  rectY_5_2 = random(0, 820);
  rectX_5_3 = random(rectX_5_2+400, 1800);
  rectY_5_3 = random(80, 820);
  rectX_6_1 = random(0, rectX_6_2-400);
  rectY_6_1 = random(180, 820);
  rectX_6_2 = random(500, 1200);
  rectY_6_2 = random(0, 820);
  rectX_6_3 = random(rectX_6_2+400, 1800);
  rectY_6_3 = random(80, 820);
  rectX_7_1 = random(0, rectX_7_2-400);
  rectY_7_1 = random(180, 820);
  rectX_7_2 = random(500, 1200);
  rectY_7_2 = random(0, 820);
  rectX_7_3 = random(rectX_7_2+400, 1800);
  rectY_7_3 = random(80, 820);
  
}


void draw(){
  background(rectColor);
  
  fill(255, 0, 100);
  textFont(font_0);
  text(quote0, 26, 24, 500, 150);                           //PREFACE
  

                                                            // PAGE CHANGE
if (page == 1){
 page_1();
 }
if (page == 2){
 page_2();
 }  
if (page == 3){
 page_3();
 }  
if (page == 4){
 page_4();
 }  
if (page == 5){
  page_5();
}
if (page==6){
  page_6();
}
if(page==7){
 page_7(); 
}
if(page==9){
  page_love();
  
}
if (page == 8){
 page_end();
 }  
}


void page_end () {
  textFont(font_8);
  text(quoteEnd, width/2-300, height/2, 500,400);
}


void page_love(){
//  fill();
  if(button_1 == true){
    textFont(font_love1);
    text(quoteLove, width/4, height/2,400, 200);
    text(quoteLove_1, width/4+80, height/2+200,600, 400);
  } else if (button_2 == true){
    textFont(font_love2);
    text(quoteLove, width/4, height/2, 400, 200);
    text(quoteLove_2, width/4+80, height/2+300,700, 400);
  }
}


void page_1 () {
    if (button_1 == true) {                                     //RECT_1 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
 
  rect(rectX_1_1, rectY_1_1, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_1_1);
  text(quote1_1, rectX_1_1+16, rectY_1_1+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT1_1
  
  
  if( overRect_1(rectX_1_1, rectY_1_1, rectSizew, rectSizeh) ) {
    button_1 = true;
  } else {
    button_1 = false;
  }
  
  if (button_2 == true) {                                       //RECT_2 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  
  rect(rectX_1_2, rectY_1_2, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_1_2);
  text(quote1_2, rectX_1_2+16, rectY_1_2+16, rectSizew, rectSizeh); //DRAW RECT + TEXT1_2
  
  if( overRect_2(rectX_1_2, rectY_1_2, rectSizew, rectSizeh) ) {
    button_2 = true;
  } else {
    button_2 = false;
  }
  
    if (button_3 == true) {                                     //RECT_3 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
 
  rect(rectX_1_3, rectY_1_3, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_1_3);
  text(quote1_3, rectX_1_3+16, rectY_1_3+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT1_3
  
  
  if( overRect_3(rectX_1_3, rectY_1_3, rectSizew, rectSizeh) ) {
    button_3 = true;
  } else {
    button_3 = false;
  }
}

void page_2 (){                                              // PAGE 2
  if (button_1 == true) {                                     //RECT_1 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
 
  rect(rectX_2_1, rectY_2_1, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_2_1);
  text(quote2_1, rectX_2_1+16, rectY_2_1+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT2_1
  
  
  if( overRect_1(rectX_2_1, rectY_2_1, rectSizew, rectSizeh) ) {
    button_1 = true;
  } else {
    button_1 = false;
  }
  
  if (button_2 == true) {                                     //RECT_2 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  
  rect(rectX_2_2, rectY_2_2, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_2_2);
  text(quote2_2, rectX_2_2+16, rectY_2_2+16, rectSizew, rectSizeh); //DRAW RECT + TEXT2_2
  
  if( overRect_2(rectX_2_2, rectY_2_2, rectSizew, rectSizeh) ) {
    button_2 = true;
  } else {
    button_2 = false;
  }
  
    if (button_3 == true) {                                     //RECT_3 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
 
  rect(rectX_2_3, rectY_2_3, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_2_3);
  text(quote2_3, rectX_2_3+16, rectY_2_3+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT2_3
  
  
  if( overRect_3(rectX_2_3, rectY_2_3, rectSizew, rectSizeh) ) {
    button_3 = true;
  } else {
    button_3 = false;
  }
}

void page_3 (){                                               // PAGE 3
  if (button_1 == true) {                                     //RECT_1 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
 
  rect(rectX_3_1, rectY_3_1, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_3_1);
  text(quote3_1, rectX_3_1+16, rectY_3_1+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT3_1
  
  
  if( overRect_1(rectX_3_1, rectY_3_1, rectSizew, rectSizeh) ) {
    button_1 = true;
  } else {
    button_1 = false;
  }
  
  if (button_2 == true) {                                     //RECT_2 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  
  rect(rectX_3_2, rectY_3_2, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_3_2);
  text(quote3_2, rectX_3_2+16, rectY_3_2+16, rectSizew, rectSizeh); //DRAW RECT + TEXT3_2
  
  if( overRect_2(rectX_3_2, rectY_3_2, rectSizew, rectSizeh) ) {
    button_2 = true;
  } else {
    button_2 = false;
  }
  
    if (button_3 == true) {                                     //RECT_3 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
 
  rect(rectX_3_3, rectY_3_3, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_3_3);
  text(quote3_3, rectX_3_3+16, rectY_3_3+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT3_3
  
  
  if( overRect_3(rectX_3_3, rectY_3_3, rectSizew, rectSizeh) ) {
    button_3 = true;
  } else {
    button_3 = false;
  }
 
}

void page_4 (){                                               // PAGE 4

  if (button_1 == true) {                                     //RECT_1 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  
  rect(rectX_4_1, rectY_4_1, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_4_1);
  text(quote4_1, rectX_4_1+16, rectY_4_1+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT4_1
  
  
  if( overRect_1(rectX_4_1, rectY_4_1, rectSizew, rectSizeh) ) {
    button_1 = true;
  } else {
    button_1 = false;
  }
  
  if (button_2 == true) {                                     //RECT_2 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  
  rect(rectX_4_2, rectY_4_2, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_4_2);
  text(quote4_2, rectX_4_2+16, rectY_4_2+16, rectSizew, rectSizeh); //DRAW RECT + TEXT4_2
  
  if( overRect_2(rectX_4_2, rectY_4_2, rectSizew, rectSizeh) ) {
    button_2 = true;
  } else {
    button_2 = false;
  }
  
    if (button_3 == true) {                                     //RECT_3 mouseover
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
 
  rect(rectX_4_3, rectY_4_3, rectSizew, rectSizeh);  
  fill(255, 0, 100);
  textFont(font_4_3);
  text(quote4_3, rectX_4_3+16, rectY_4_3+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT4_3
  
  
  if( overRect_3(rectX_4_3, rectY_4_3, rectSizew, rectSizeh) ) {
    button_3 = true;
  } else {
    button_3 = false;
  }
 
}


void page_5(){                                                   // PAGE 5
  
  if(button_1 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_5_1, rectY_5_1, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_5_1);
  text(quote5_1, rectX_5_1+16, rectY_5_1+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT5_1
  
  if(overRect_1(rectX_5_1, rectY_5_1, rectSizew, rectSizeh)){
    button_1 = true;
  }else {
    button_1 = false;
  }
  
  if(button_2 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_5_2, rectY_5_2, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_5_2);
  text(quote5_2, rectX_5_2+16, rectY_5_2+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT5_2
  
  if(overRect_2(rectX_5_2, rectY_5_2, rectSizew, rectSizeh)){
    button_2 = true;
  }else {
    button_2 = false;
  }
  
  if(button_3 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_5_3, rectY_5_3, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_5_3);
  text(quote5_3, rectX_5_3+16, rectY_5_3+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT5_3
  
  if(overRect_3(rectX_5_3, rectY_5_3, rectSizew, rectSizeh)){
    button_3 = true;
  }else {
    button_3 = false;
  }
  
}


void page_6(){                                                   // PAGE 6
  
  if(button_1 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_6_1, rectY_6_1, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_6_1);
  text(quote6_1, rectX_6_1+16, rectY_6_1+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT6_1
  
  if(overRect_1(rectX_6_1, rectY_6_1, rectSizew, rectSizeh)){
    button_1 = true;
  }else {
    button_1 = false;
  }
  
  if(button_2 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_6_2, rectY_6_2, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_6_2);
  text(quote6_2, rectX_6_2+16, rectY_6_2+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT6_2
  
  if(overRect_2(rectX_6_2, rectY_6_2, rectSizew, rectSizeh)){
    button_2 = true;
  }else {
    button_2 = false;
  }
  
  if(button_3 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_6_3, rectY_6_3, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_6_3);
  text(quote6_3, rectX_6_3+16, rectY_6_3+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT5_3
  
  if(overRect_3(rectX_6_3, rectY_6_3, rectSizew, rectSizeh)){
    button_3 = true;
  }else {
    button_3 = false;
  }
  
}

void page_7(){                                                   // PAGE 7
  
  if(button_1 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_7_1, rectY_7_1, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_7_1);
  text(quote7_1, rectX_7_1+16, rectY_7_1+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT7_1
  
  if(overRect_1(rectX_7_1, rectY_7_1, rectSizew, rectSizeh)){
    button_1 = true;
  }else {
    button_1 = false;
  }
  
  if(button_2 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_7_2, rectY_7_2, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_7_2);
  text(quote7_2, rectX_7_2+16, rectY_7_2+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT7_2
  
  if(overRect_2(rectX_7_2, rectY_7_2, rectSizew, rectSizeh)){
    button_2 = true;
  }else {
    button_2 = false;
  }
  
  if(button_3 == true){
    fill(rectHighlight);
  } else {
    fill(rectColor); 
  }
  rect(rectX_7_3, rectY_7_3, rectSizew, rectSizeh);
  fill(255, 0, 100);
  textFont(font_7_3);
  text(quote7_3, rectX_7_3+16, rectY_7_3+16, rectSizew, rectSizeh);  //DRAW RECT + TEXT7_3
  
  if(overRect_3(rectX_7_3, rectY_7_3, rectSizew, rectSizeh)){
    button_3 = true;
  }else {
    button_3 = false;
  }
  
}

//Button 1+2+3
boolean overRect_1(float x, float y, float w, float h)  {
  if (mouseX >= x && mouseX <= x+ w && 
      mouseY >= y && mouseY <= y+ h) {
    return true;
  } else {
    return false;
  }
}

boolean overRect_2(float x, float y, float w, float h)  {
  if (mouseX >= x && mouseX <= x+ w && 
      mouseY >= y && mouseY <= y+ h) {
    return true;
  } else {
    return false;
  }
}

boolean overRect_3(float x, float y, float w, float h)  {
  if (mouseX >= x && mouseX <= x+ w && 
      mouseY >= y && mouseY <= y+ h) {
    return true;
  } else {
    return false;
  }
}



//
void mousePressed() {
  if (page == 1 ) {
    if (overRect_1(rectX_1_1, rectY_1_1, rectSizew, rectSizeh) == true){
      page = 2;}
    else if (overRect_2(rectX_1_2, rectY_1_2, rectSizew, rectSizeh) == true){
      page = 2;}
    else if (overRect_3(rectX_1_3, rectY_1_3, rectSizew, rectSizeh) == true){ 
      page = 8;}
    }
  
  
  if (page == 2 ){
    if (overRect_1(rectX_2_1, rectY_2_1, rectSizew, rectSizeh) == true){
      page = 8;}
    else if (overRect_2(rectX_2_2, rectY_2_2, rectSizew, rectSizeh) == true){
      page = 3;}
    else if (overRect_3(rectX_2_3, rectY_2_3, rectSizew, rectSizeh) == true){ 
      page = 3;}
     }
     
  if (page == 3 ){
    if (overRect_1(rectX_3_1, rectY_3_1, rectSizew, rectSizeh) == true){
      page = 4;}
    else if (overRect_2(rectX_3_2, rectY_3_2, rectSizew, rectSizeh) == true){
      page = 8;}
    else if (overRect_3(rectX_3_3, rectY_3_3, rectSizew, rectSizeh) == true){ 
      page = 4;}
     }
     
  if (page == 4 ){
    if (overRect_1(rectX_4_1, rectY_4_1, rectSizew, rectSizeh) == true){
      page = 5;}
    else if (overRect_2(rectX_4_2, rectY_4_2, rectSizew, rectSizeh) == true){
      page = 8;}
    else if (overRect_3(rectX_4_3, rectY_4_3, rectSizew, rectSizeh) == true){ 
      page = 5;}
     }
     
   if(page == 5){
     if(overRect_1(rectX_5_1, rectY_5_1, rectSizew, rectSizeh) == true){
       page = 6;}
     else if (overRect_2(rectX_5_2, rectY_5_2, rectSizew, rectSizeh)== true){
       page = 6;}
     else if (overRect_3(rectX_5_3, rectY_5_3, rectSizew, rectSizeh)== true){
       page = 8;}
   }
   
   if(page == 6){
     if(overRect_1(rectX_6_1, rectY_6_1, rectSizew, rectSizeh) == true){
       page = 7;}
     else if (overRect_2(rectX_6_2, rectY_6_2, rectSizew, rectSizeh)== true){
       page = 8;}
     else if (overRect_3(rectX_6_3, rectY_6_3, rectSizew, rectSizeh)== true){
       page = 7;}
   }
   
    if(page == 7){
     if(overRect_1(rectX_7_1, rectY_7_1, rectSizew, rectSizeh) == true){
       page = 9;}
     else if (overRect_2(rectX_7_2, rectY_7_2, rectSizew, rectSizeh)== true){
       page = 9;}
     else if (overRect_3(rectX_7_3, rectY_7_3, rectSizew, rectSizeh)== true){
       page = 8;}
   }
     
}