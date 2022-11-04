int Tab1 [] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};   //AC
int Tab2 [] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};   //CC
int I,J,K;
void main() {
  for(I=0;I<=9;I++) {
      for(J=0;J<=9;J++){
          for(K=0;K<=9;K++){
          TRISA=0;
          TRISB=0;
          PORTB=Tab2[I]; PORTA=0; PORTA=1;
          PORTB=Tab2[J]; PORTA=0; PORTA=2;
          PORTB=Tab1[K]; PORTA=0; PORTA=4;
          delay_ms(500);
          
          
          
          }
      
      
      }
  
  
  }
}