void setup() {
 pinMode(3,OUTPUT);
 pinMode(4,OUTPUT);
 pinMode(5,OUTPUT);
 pinMode(7,OUTPUT);


}
void loop() {
 digitalWrite(3,HIGH);
 delay(1000);
 digitalWrite(3,LOW);
 digitalWrite(4,HIGH);
 delay(1000);
 digitalWrite(4,LOW);
 digitalWrite(5,HIGH);
 delay(1000);
 digitalWrite(5,LOW);
 digitalWrite(7,HIGH);
 delay(1000);
 digitalWrite(7,LOW);
 digitalWrite(5,HIGH);
 delay(1000);
 digitalWrite(5,LOW);
 digitalWrite(4,HIGH);
 delay(1000);
 digitalWrite(4,LOW);
 
}
