#include <Ultrasonic.h>
Ultrasonic A = Ultrasonic(5,2);

void setup() {
  pinMode(3,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int d = A.distanceRead();
  Serial.println(d);
  if(d<10){
    digitalWrite(3,HIGH);
  }else{
    digitalWrite(3,LOW);
  }
}
