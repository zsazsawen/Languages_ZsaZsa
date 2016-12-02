//control and timer 

void motorControl(){
  
   if (mouthWidth >= 16 && moving == false) {  
                                       //motors move
     pt = ct;                    //timer
     println("      " + pt);
     
   if(ct - pt > 0 && ct - pt < 2000){
     myPort.write('1');          //send a 1
     println("1");
     
   }
   
   if(ct - pt >= 2000 && ct - pt < 4000){ 

     myPort.write('3');
     println("2");
     
   } 
   
   if (ct - pt >= 4000 && ct - pt < 6000){

     myPort.write('2');          
     println("3");
   }
   
   if ( ct - pt >= 6000){
    
     myPort.write('3');          
     println("4");
     pt = 0;
   }
    moving = true;
  } 
   else if (mouthWidth < 16 && moving == true ) {
                                       //motors stop
     myPort.write('3');     
     println("stop");
     moving = false;
   } 
 } 
 