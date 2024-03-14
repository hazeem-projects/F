#include <Servo.h>
Servo W4 = Servo();
void setup() {
  // put your setup code here, to run once:
W4.attach(8);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
int x = Serial.read();

if(x != -1){
  Serial.println(x);
}
}
