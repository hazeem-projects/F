#include <Ultrasonic.h>
Ultrasonic w1 = Ultrasonic(3,4);
void setup() {
  // put your setup code here, to run once
  pinMode(2,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
int d = w1.distanceRead();

if(d<10){
  digitalWrite(2,HIGH);
}else{
  digitalWrite(2,LOW);
}
}
