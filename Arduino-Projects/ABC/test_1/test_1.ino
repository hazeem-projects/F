void setup() {
  // put your setup code here, to run once:
pinMode(12,OUTPUT);
pinMode(11,OUTPUT);
pinMode(10,OUTPUT);
pinMode(9,OUTPUT);
pinMode(8,OUTPUT);
pinMode(7,OUTPUT);
pinMode(6,OUTPUT);


}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(12,HIGH);
delay(500);
digitalWrite(11,HIGH);
delay(500);
digitalWrite(10,HIGH);
digitalWrite(12,LOW);
delay(500);
digitalWrite(9,HIGH);
digitalWrite(11,LOW);
delay(500);
digitalWrite(8,HIGH);
digitalWrite(10,LOW);
delay(500);
digitalWrite(7,HIGH);
digitalWrite(9,LOW);
delay(500);
digitalWrite(6,HIGH);
digitalWrite(8,LOW);
delay(500);
digitalWrite(7,LOW);
digitalWrite(6,LOW);
delay(500);

}
