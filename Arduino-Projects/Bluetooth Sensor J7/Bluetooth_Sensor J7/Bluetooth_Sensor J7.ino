void setup() {
  // put your setup code here, to run once:
pinMode(7,OUTPUT);
pinMode(6,OUTPUT);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
if(Serial.available()>0){
  int x = Serial.read();
 if(x == '1'){
  digitalWrite(6,LOW);
  digitalWrite(7,HIGH);
 }
 if(x == '2'){
  digitalWrite(7,LOW);
  digitalWrite(6,HIGH);
 }
 
}
}
