#include <Ultrasonic.h>
Ultrasonic u = Ultrasonic(6, 7);

void setup() {
  // put your setup code here, to run once:
  //1st motor
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(8, OUTPUT);
 // 2ndmotor
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);


  analogWrite(11, 200);
  analogWrite(5, 200);

  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  int x = u.read();
  Serial.println(x);
  if (x > 10) {
    digitalWrite(12, HIGH);
    digitalWrite(8, LOW);

    digitalWrite(3, HIGH);
    digitalWrite(4, LOW);



  } else {
    digitalWrite(12, LOW);
    digitalWrite(8, HIGH);


    digitalWrite(3, LOW);
    digitalWrite(4, HIGH);

  }
}
