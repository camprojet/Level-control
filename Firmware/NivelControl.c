//Saidas
#define RLB PORTB.RB4
#define LED PORTB.RB0
//Entradas
#define NA PORTA.RA2
#define NB PORTA.RA3

void main() {
CMCON=0x07;
TRISA=0b00001100;
PORTA=0b11111111;
TRISB=0b00000000;
PORTB=0;

volta:
LED=1;
if (NA==1 && NB==1)
 {
  RLB=0;
  }
if (NA==0 && NB==1)
 {
  RLB=0;
  }
if (NA==0 && NB==0)
 {
  RLB=1;
  }
Delay_ms(250);
LED=0;
Delay_ms(250);
goto volta;
}