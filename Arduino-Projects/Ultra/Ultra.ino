void setup() {
  // put your setup code here, to run once:

  pinMode(5, OUTPUT);
  pinMode(6, INPUT);


  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:

  digitalWrite(5, HIGH);
  delayMicroseconds(10);
  digitalWrite(5, LOW);

  long t = pulseIn(6, HIGH);
  long d = (t / 2) / 28.5;
  Serial.println(d);
     
    
   
   
    
    
    

}
