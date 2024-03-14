#include <Servo.h>
Servo s = Servo();
void setup() {
  // put your setup code here, to run once:
s.attach(2);
pinMode(3,OUTPUT);
pinMode(4,OUTPUT);
pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
s.write(0);
digitalWrite(3,HIGH);
delay(1000);
s.write(30);
digitalWrite(4,HIGH);
delay(2000);
s.write(60);
digitalWrite(5,HIGH);
delay(3000);
s.write(90);
digitalWrite(6,HIGH);
delay(4000);
s.write(120);
digitalWrite(7,HIGH);
delay(5000);
digitalWrite(7,LOW);
delay(2000);
s.write(90);
digitalWrite(6,LOW);
delay(4000);
s.write(60);
digitalWrite(5,LOW);
delay(3000);
s.write(30);
digitalWrite(4,LOW);
delay(2000);
s.write(0);
digitalWrite(3,LOW);
delay(1000);


}
