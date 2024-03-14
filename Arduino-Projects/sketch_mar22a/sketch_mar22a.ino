#include <Ultrasonic.h>
Ultrasonic u = Ultrasonic(2,3);
void setup() {
  // put your setup code here, to run once
  Serial.begin(9600);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
int x = u.read();
Serial.println(x);
if(x>10){
  digitalWrite(4,HIGH);
  digitalWrite(5,LOW);
}
if(x<10){
  digitalWrite(5,HIGH);
  digitalWrite(4,LOW);
  }
}
