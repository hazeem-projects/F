#include <Servo.h>
Servo s = Servo();
#include <Ultrasonic.h>
Ultrasonic u = Ultrasonic(6,7);
void setup() {
  // put your setup code here, to run once:
pinMode(11,OUTPUT);
pinMode(12,OUTPUT);
pinMode(13,OUTPUT);
analogWrite(11,200);
analogWrite(3,200);
Serial.begin(9600);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);
s.attach(2);
}

void loop() {
  int x = u.read();
  Serial.println(x);
  if(x>10){
digitalWrite(12,HIGH);
digitalWrite(13,LOW);
digitalWrite(4,HIGH);
digitalWrite(5,LOW);
digitalWrite(9,HIGH);
digitalWrite(8,LOW);
s.write(0);
delay(1000);
s.write(180);
  }
  if(x<10){
    digitalWrite(12,LOW);
digitalWrite(13,HIGH);
digitalWrite(4,LOW);
digitalWrite(5,HIGH);
digitalWrite(8,HIGH);
digitalWrite(9,LOW);
s.write(0);
delay(1000);
s.write(90);

    }
}
