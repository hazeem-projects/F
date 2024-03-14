void setup() {
  // put your setup code here, to run once:
pinMode(13,OUTPUT);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
int x = Serial.read();

if(x=='1'){
  digitalWrite(13,HIGH);
}
if(x=='2'){
  digitalWrite(13,LOW);
}
}
