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

Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
int x = Serial.read();

if(x=='1'){
  digitalWrite(12,HIGH);
  digitalWrite(13,LOW);
  
  digitalWrite(6,HIGH);
  digitalWrite(7,LOW);
  }
if(x=='2'){
  digitalWrite(12,LOW);
  digitalWrite(13,HIGH);
  
  digitalWrite(6,LOW);
  digitalWrite(7,HIGH);
  }  
}
