#include <AFMotor.h>

AF_DCMotor motor1(1, MOTOR12_64KHZ);
AF_DCMotor motor2(2, MOTOR12_64KHZ); // create motor #2, 64KHz pwm

//receive data from P
char val; // Data received from the serial port

void setup() {
  Serial.begin(9600);           // set up Serial library at 9600 bps
  
}

void loop() {
 // Serial.print("tick");
 //   If data is available to read
  if (Serial.available()) { 
     val = Serial.read(); // read it and store it in val
   }
   
  if (val == '1') {      // If 1 was received
    
    motor1.setSpeed(100);
    motor1.run(FORWARD);      
    motor2.run(FORWARD); 
    delay(2000);

    motor1.run(RELEASE);     
    motor2.run(RELEASE);
    delay(2000);
    
    motor1.setSpeed(100);
    motor1.run(BACKWARD);      
    motor2.run(BACKWARD); 
    delay(2000);
    
    motor1.run(RELEASE);     
    motor2.run(RELEASE);
    delay(2000);
  }

}
