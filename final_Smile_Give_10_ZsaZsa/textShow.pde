void textShow(){
  
 if ( mouthWidth >= harder1 && mouthWidth <= hit - 0.1 ){
      
    textFont(font1);
    fill(random(255), random(255), random(255));
    text(quote, width/2 - 630, height/2 + 290);
    
  } 
  
  if (mouthWidth >= harder2 && mouthWidth <= hit - 0.1 ){
    
    fill(random(255), random(255), random(255));
    
    
    textFont(font1);
    text(quote, width/2 - 630, height/2 + 300);
    
  }
  
  
}