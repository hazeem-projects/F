void setup() {
  // put your setup code here, to run once:
pinMode(11,OUTPUT);
pinMode(12,OUTPUT);
pinMode(13,OUTPUT);
analogWrite(11,255);
}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(12,LOW);
digitalWrite(13,HIGH);
}
