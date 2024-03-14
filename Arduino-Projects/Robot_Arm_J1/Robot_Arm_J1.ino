#include <IRremote.h>
IRrecv ir=IRrecv(7);
decode_results dr= decode_results();

void setup() {
  // put your setup code here, to run once:
pinMode(12,OUTPUT);
ir.enableIRIn();
Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
int x=ir.decode(&dr);
if(x==1){
  int v=dr.value;
  Serial.println(v);
  ir.resume();
  }

}
