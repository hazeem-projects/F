#include <Ultrasonic.h>
Ultrasonic w = Ultrasonic(3,4);

void setup() {
  Serial.begin(9600);
}

void loop() {
  int x = w.distanceRead();
  Serial.println(x);
}
