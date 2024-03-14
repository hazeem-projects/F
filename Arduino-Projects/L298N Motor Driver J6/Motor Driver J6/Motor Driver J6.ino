void setup() {
  // put your setup code here, to run once:
pinMode(6,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);

analogWrite(6,200);

}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(8,HIGH);
digitalWrite(9,LOW);
}
