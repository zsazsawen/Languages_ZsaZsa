//control and timer 

void motorControl(){
  
   if (mouthWidth >= hit && jobDone == false && state == "candy") {  

     myPort.write('1');        //send a 1 to Arduino
     
     println("go");
   
     jobDone = true;
     state = "nocandy"; 
     
     delay(5000);
  } 
   else if (mouthWidth >= hit && jobDone == false && state == "nocandy"){
     
     jobDone = true;
     state = "candy"; 
     
     delay(5000);
     
   }
   else if (mouthWidth < hit && jobDone == true){
     println("stop");
     jobDone = false;
     
    
  } 
  
                                                                                                                                                             
 } 
 