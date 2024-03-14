#include <Servo.h>
Servo W2 = Servo();

void setup() {
  // put your setup code here, to run once:
W2.attach(4);

}

void loop() {
  // put your main code here, to run repeatedly:

W2.write(90);
delay(1000);
W2.write(180);
delay(1000);
W2.write(0);
delay(1000);
}
