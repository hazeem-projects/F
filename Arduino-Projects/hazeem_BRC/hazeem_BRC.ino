#include <Ultrasonic.h>
Ultrasonic w2 = Ultrasonic(3, 4);

#include <Servo.h>
Servo w1 = Servo();


void setup() {
  // put your setup code here, to run once:
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  analogWrite(11, 200);

  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  analogWrite(5, 200);

  w1.attach(8);
  Serial.begin(9600);
pinMode(10,OUTPUT);
pinMode(9,OUTPUT);
pinMode(2,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int x = Serial.read();
  if (x == '1') {
    w1.write(105);
    int d = w2.distanceRead();
    if (d > 10) {
 digitalWrite(2,HIGH);
  digitalWrite(9,LOW);
      digitalWrite(12, HIGH);
      digitalWrite(13, LOW);
      digitalWrite(6, HIGH);
      digitalWrite(7, LOW);
      delay(200);
      digitalWrite(12, LOW);
      digitalWrite(13, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
    } else {
digitalWrite(9,HIGH);
  digitalWrite(2,LOW);
      digitalWrite(12, LOW);
      digitalWrite(13, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);

    }

  }
  if (x == '2') {
    w1.write(60);
    int d = w2.distanceRead();

    if (d > 10) {
digitalWrite(9,LOW);
      digitalWrite(10,HIGH);

      digitalWrite(6, LOW);
      digitalWrite(7, HIGH);

      digitalWrite(12, LOW);
      digitalWrite(13, LOW);

      delay(200);
      digitalWrite(12, LOW);
      digitalWrite(13, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
    } else {

digitalWrite(10,LOW);

      digitalWrite(12, LOW);
      digitalWrite(13, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
    }
  }
  if (x == '3') {
    w1.write(105);

digitalWrite(9,HIGH);

    digitalWrite(12, LOW);
    digitalWrite(13, HIGH);
    digitalWrite(6, LOW);
    digitalWrite(7, HIGH);
    delay(200);
    digitalWrite(12, LOW);
    digitalWrite(13, LOW);
    digitalWrite(6, LOW);
    digitalWrite(7, LOW);
  }
  if (x == '4') {
    w1.write(145);
    int d = w2.distanceRead();

    if (d > 10) {
 digitalWrite(2,LOW);
      digitalWrite(9,LOW);
       digitalWrite(10,HIGH);

      digitalWrite(12, LOW);
      digitalWrite(13, HIGH);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
      delay(200);
      digitalWrite(12, LOW);
      digitalWrite(13, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);
    } else {
digitalWrite(10,LOW);

      digitalWrite(12, LOW);
      digitalWrite(13, LOW);
      digitalWrite(6, LOW);
      digitalWrite(7, LOW);

    }
  }
}
