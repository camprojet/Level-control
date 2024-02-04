
_main:

;NivelControl.c,8 :: 		void main() {
;NivelControl.c,9 :: 		CMCON=0x07;
	MOVLW      7
	MOVWF      CMCON+0
;NivelControl.c,10 :: 		TRISA=0b00001100;
	MOVLW      12
	MOVWF      TRISA+0
;NivelControl.c,11 :: 		PORTA=0b11111111;
	MOVLW      255
	MOVWF      PORTA+0
;NivelControl.c,12 :: 		TRISB=0b00000000;
	CLRF       TRISB+0
;NivelControl.c,13 :: 		PORTB=0;
	CLRF       PORTB+0
;NivelControl.c,15 :: 		volta:
___main_volta:
;NivelControl.c,16 :: 		LED=1;
	BSF        PORTB+0, 0
;NivelControl.c,17 :: 		if (NA==1 && NB==1)
	BTFSS      PORTA+0, 2
	GOTO       L_main2
	BTFSS      PORTA+0, 3
	GOTO       L_main2
L__main13:
;NivelControl.c,19 :: 		RLB=0;
	BCF        PORTB+0, 4
;NivelControl.c,20 :: 		}
L_main2:
;NivelControl.c,21 :: 		if (NA==0 && NB==1)
	BTFSC      PORTA+0, 2
	GOTO       L_main5
	BTFSS      PORTA+0, 3
	GOTO       L_main5
L__main12:
;NivelControl.c,23 :: 		RLB=0;
	BCF        PORTB+0, 4
;NivelControl.c,24 :: 		}
L_main5:
;NivelControl.c,25 :: 		if (NA==0 && NB==0)
	BTFSC      PORTA+0, 2
	GOTO       L_main8
	BTFSC      PORTA+0, 3
	GOTO       L_main8
L__main11:
;NivelControl.c,27 :: 		RLB=1;
	BSF        PORTB+0, 4
;NivelControl.c,28 :: 		}
L_main8:
;NivelControl.c,29 :: 		Delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;NivelControl.c,30 :: 		LED=0;
	BCF        PORTB+0, 0
;NivelControl.c,31 :: 		Delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;NivelControl.c,32 :: 		goto volta;
	GOTO       ___main_volta
;NivelControl.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
