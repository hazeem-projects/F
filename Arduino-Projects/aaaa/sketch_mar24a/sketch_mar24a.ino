#include <Ultrasonic.h>
Ultrasonic s = Ultrasonic(3, 4);


void setup() {
  // put your setup code here, to run once:
  pinMode(3, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(4, OUTPUT);

  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  Serial.begin(9600);

  analogWrite(3, 200);

}

void loop() {
  // put your main code here, to run repeatedly:
  int x = s.read();
  System.out.println(x);

  if (x > 17) {
    digitalWrite(5, HIGH);
    digitalWrite(4, LOW);


    digitalWrite(6, HIGH);
    digitalWrite(7, LOW);


  } else {

    digitalWrite(5, LOW);
    digitalWrite(4, HIGH);


    digitalWrite(6, LOW);

    digitalWrite(7, HIGH);



  }



}
