void setup() {
  // put your setup code here, to run once:
pinMode(13,OUTPUT);
pinMode(10,OUTPUT);
pinMode(8,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(13,HIGH);
digitalWrite(8,LOW);
digitalWrite(10,LOW);
delay(1000);
digitalWrite(8,HIGH);
digitalWrite(10,LOW);
digitalWrite(13,LOW);
delay(1000);
digitalWrite(10,HIGH);
digitalWrite(13,LOW);
digitalWrite(8,LOW);
delay(1000);
digitalWrite(10,HIGH);
digitalWrite(13,LOW);
digitalWrite(8,LOW);
delay(1000);
digitalWrite(8,HIGH);
digitalWrite(10,LOW);
digitalWrite(13,LOW);
delay(1000);
digitalWrite(13,HIGH);
digitalWrite(8,LOW);
digitalWrite(10,LOW);
delay(1000);
}
