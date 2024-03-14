#include <Ultrasonic.h>
Ultrasonic W2 = Ultrasonic(3,4);
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(13,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
int x = W2.distanceRead();
Serial.println(x);
if(x<10){
  digitalWrite(13,HIGH);
}else{
  digitalWrite(13,LOW);
}

}
