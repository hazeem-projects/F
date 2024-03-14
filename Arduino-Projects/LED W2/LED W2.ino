void setup() {
  // put your setup code here, to run once:
pinMode(3,OUTPUT);
pinMode(4,INPUT);
pinMode(7,OUTPUT);

Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(3,HIGH);
delayMicroseconds(10);
digitalWrite(3,LOW);

long t = pulseIn(4,HIGH);
long d = (t / 2) / 28.5;
Serial.println(d);

if(d<10){
  digitalWrite(7,HIGH);
  }
else{
  digitalWrite(7,LOW);
  }

}
