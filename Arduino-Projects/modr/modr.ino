

void setup() {
  
pinMode(6,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);

analogWrite(6,250);

}

void loop() {
  
digitalWrite(8,LOW);
digitalWrite(9,HIGH);
}
