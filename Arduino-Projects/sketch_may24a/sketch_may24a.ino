#include <Servo.h>
Servo s1=Servo();
Servo s2=Servo();
Servo s3=Servo();
Servo s4=Servo();

#include <IRremote.h>
IRrecv ir=IRrecv(7);
decode_results dr;

int x=0;

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
ir.enableIRIn();
s1.attach(3);
//s1.attach(4);
//s1.attach(5);
//s1.attach(6);

}

void loop() {
  // put your main code here, to run repeatedly:

if(ir.decode(&dr)){
  int v=dr.value;

  if(v==-23971){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x+1;
      delay(1000);
      if(x>180){
        x=180;
        
        
        
        }
      
      }
  }
      if(v==25245){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x-1;
      delay(1000);
      if(x<0){
        x=0;
        
        
        
        }
      
      }
    
    }
    
   /* if(v==-7651){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x+1;
      delay(1000);
      if(x>180){
        x=180;
        
      }
        
        }
      
      }
      if(v==8925){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x-1;
      delay(1000);
      if(x<0){
        x=0;
        
      }
        
        }
      
      }
      if(v==765){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x+1;
      delay(1000);
      if(x>180){
        x=180;
        
        
      }
        }
      
      }
      if(v==-15811){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x-1;
      delay(1000);
      if(x<0){
        x=0;
        
        
      }
        }
      
      }
      
      if(v==-8161){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x+1;
      delay(1000);
      if(x>180){
        x=180;
        
        
        
        }
    }
      }
      if(v==-22441){
    for(int y=0;y<10;y++){
      
      s1.write(x);
      x=x-1;
      delay(1000);
      if(x>180){
        x=180;
        
        
        
        }
      
      }
      }
*/
  Serial.println(v);
  ir.resume();
}

}
