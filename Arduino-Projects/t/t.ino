#include <Servo.h>
Servo s1=Servo();
void setup() {
  // put your setup code here, to run once:
s1.attach(3);
s1.write(45);
delay(1000);
s1.write(90);
}

void loop() {
  // put your main code here, to run repeatedly:

}
