#include <Servo.h>
Servo s1=Servo();

void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
  s1.attach(8);
 

}

void loop() {
  // put your main code here, to run repeatedly:
 s1.write(0);
  delay(1000);
  s1.write(90);
  delay(1000);
 s1.write(180);
 delay(1000);
}
