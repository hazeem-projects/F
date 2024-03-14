#include <Ultrasonic.h>
Ultrasonic u = Ultrasonic(3,2);
void setup() {
Serial.begin(9600);
pinMode(13,OUTPUT);  
}

void loop() {
 int x = u.read();
Serial.println(x);
if(x<10){
  digitalWrite(13,HIGH);}
  if(x>10){
    digitalWrite(13,LOW);}
}
