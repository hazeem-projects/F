#include <IRremote.h>
IRrecv r = IRrecv(7);
decode_results d = decode_results();

void setup() {
r.enableIRIn();
Serial.begin(9600);
pinMode(8,OUTPUT);
}

void loop() {
if(r.decode(&d)){
  int v = d.value;
  Serial.println(v);

  if(v == -23971){
    digitalWrite(8,HIGH);
    }
    if(v == 25245){
    digitalWrite(8,LOW);
    }

    r.resume();
}
}
