#include <Servo.h>
Servo W1 = Servo();
Servo W2 = Servo();



void setup() {
  W1.attach(3);
  W2.attach(4);
  
  
}

void loop() {
  
  W1.write(180);
  delay(1000);
  W1.write(0);
  delay(1000);
  W2.write(90);
  delay(1000);
  W2.write(0);
  delay(1000);

}
