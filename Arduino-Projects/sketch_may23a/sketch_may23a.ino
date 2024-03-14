#include <Servo.h>
Servo s=Servo();
void setup() {
  // put your setup code here, to run once:
s.attach(7);
}

void loop() {
  // put your main code here, to run repeatedly:
s.write(0);
delay(1000);
s.write(45);
delay(1000);
s.write(90);
delay(1000);
s.write(120);
delay(1000);
s.write(90);
delay(1000);
s.write(45);
delay(1000);

}
