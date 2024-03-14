#include <Ultrasonic.h>
Ultrasonic u = Ultrasonic(3,4);
#include <Servo.h>
Servo s = Servo();
void setup() {
  // put your setup code here, to run once:
pinMode(11,OUTPUT);
pinMode(12,OUTPUT);
pinMode(13,OUTPUT);
analogWrite(11,200);

pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
analogWrite(5,200);
s.attach(8);
Serial.begin(9600);
pinMode(10,OUTPUT);
pinMode(9,OUTPUT);
pinMode(2,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
int x = Serial.read();

if(x == '1'){ //forward
  s.write(90);
  int d = u.read();
  delay(300);
  if(d>20){
  digitalWrite(2,HIGH);
  digitalWrite(9,LOW);
    
  digitalWrite(12,LOW);
  digitalWrite(13,HIGH);
  digitalWrite(6,LOW);
  digitalWrite(7,HIGH);
  delay(500);
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
    }
    else{
       digitalWrite(9,HIGH);
  digitalWrite(2,LOW);
    
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  
      
      
      }
  }
if(x == '3'){ //backward
    digitalWrite(2,LOW);
        digitalWrite(9,HIGH);
  digitalWrite(12,HIGH);
  digitalWrite(13,LOW);
  digitalWrite(6,HIGH);
  digitalWrite(7,LOW);
  delay(200);
  
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  }
if(x == '0'){ //stop
    digitalWrite(2,LOW);
     digitalWrite(9,LOW);
   digitalWrite(12,LOW); 
  digitalWrite(13,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);     
  }
if(x == '2'){//left
     digitalWrite(2,LOW);
  s.write(30);
  delay(300);
  int d = u.read();
  if(d>20){
    
     digitalWrite(9,LOW);
      digitalWrite(10,HIGH);
      
      digitalWrite(12,LOW);
  digitalWrite(13,HIGH);
  digitalWrite(6,HIGH);
  digitalWrite(7,LOW);
  delay(200);
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
    } 
     digitalWrite(10,LOW);
    s.write(90);
  }
if(x == '4'){ //right
    
  s.write(150);
  delay(300);
  int d = u.read();
  if(d>20){
     digitalWrite(2,LOW);
      digitalWrite(9,LOW);
       digitalWrite(10,HIGH);
    digitalWrite(12,HIGH);
  digitalWrite(13,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,HIGH);
  delay(200);
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
    } 
     digitalWrite(10,LOW);
    s.write(90);
}    
}
