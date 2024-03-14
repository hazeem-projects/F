#include <Ultrasonic.h>
Ultrasonic W = Ultrasonic(3,4);


void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(12,OUTPUT);
pinMode(5,OUTPUT);

analogWrite(5,200);

}

void loop() {
  // put your main code here, to run repeatedly:
int x = W.distanceRead();
Serial.println(x);
if(x<10){
  delay(2000);
  digitalWrite(7,HIGH);
  digitalWrite(8,HIGH);
  digitalWrite(12,HIGH);
}else{
  digitalWrite(12,LOW);
  digitalWrite(7,LOW);
  digitalWrite(8,HIGH);
}
}
