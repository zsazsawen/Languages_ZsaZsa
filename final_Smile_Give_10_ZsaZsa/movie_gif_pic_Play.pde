void movie_gif_pic_Play() {
 
    image(movie, 0, 0, width, height);
      movie.loop();
  
if ( mouthWidth >= harder2  ) {
      movie.stop(); //movie must be shtopped!!
     
  
  if ( mouthWidth >= hit - 0.3 && state == "candy"){
   
    image(coming, 0, 0, width, height);
    println("candy");
    
  
    imageIndex = (imageIndex + 1) % gifs0.length;  //********play gif
    
    image(gifs1[imageIndex], -150, -10);         //gifs1 woman
  
    image(gifs4[imageIndex], 50, 750);        //gifs3 yellow
  
    image(gifs3[imageIndex], 1630, 460);         //gifs3 Bigbang
  
    image(gifs2[imageIndex], 1510, 800);       //gifs2 Daft Punk
  
    image(gifs0[imageIndex], 1400, 30);        //gifs0 little girl
  
    image(gifs5[imageIndex], 880, 810);         //gifs5 super saiyan
    
    image(gifs6[imageIndex], 700, 60);        //gifs6 anything
    
    image(gifs7[imageIndex], -60, 400);        //gifs7 death
    
  
  }
  
  else if (mouthWidth >= hit - 0.3 && state == "nocandy" ) {  
    
     image( nocandy, 0, 0, width, height );

     println("no candy");
     
  }     
  
 }  
}