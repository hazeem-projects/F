#include <Ultrasonic.h>
Ultrasonic W3 = Ultrasonic(3,4);

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
analogWrite(5,200);
}

void loop() {
  // put your main code here, to run repeatedly:
int x = W3.distanceRead();
Serial.println(x);
if(x<10){
  digitalWrite(6,HIGH);
  digitalWrite(6,LOW);
  }
}
