void setup() {
  // put your setup code here, to run once:
pinMode(11,OUTPUT);
pinMode(12,OUTPUT);
pinMode(13,OUTPUT);
analogWrite(11,100);

pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
analogWrite(5,100);

}

void loop() {
  // put your main code here, to run repeatedly:

digitalWrite(6,HIGH);
digitalWrite(7,LOW);
digitalWrite(12,HIGH);
digitalWrite(13,LOW);
delay(4000);
digitalWrite(6,LOW);
digitalWrite(7,HIGH);
digitalWrite(12,LOW);
digitalWrite(13,HIGH);
delay(4000);



}
