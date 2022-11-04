
_main:

	CLRF       _I+0
	CLRF       _I+1
L_main0:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _I+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       _I+0, 0
	SUBLW      9
L__main11:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
	CLRF       _J+0
	CLRF       _J+1
L_main3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _J+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       _J+0, 0
	SUBLW      9
L__main12:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
	CLRF       _K+0
	CLRF       _K+1
L_main6:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _K+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       _K+0, 0
	SUBLW      9
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
	CLRF       TRISA+0
	CLRF       TRISB+0
	MOVF       _I+0, 0
	MOVWF      R0+0
	MOVF       _I+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _Tab2+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
	CLRF       PORTA+0
	MOVLW      1
	MOVWF      PORTA+0
	MOVF       _J+0, 0
	MOVWF      R0+0
	MOVF       _J+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _Tab2+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
	CLRF       PORTA+0
	MOVLW      2
	MOVWF      PORTA+0
	MOVF       _K+0, 0
	MOVWF      R0+0
	MOVF       _K+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _Tab1+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
	CLRF       PORTA+0
	MOVLW      4
	MOVWF      PORTA+0
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
	INCF       _K+0, 1
	BTFSC      STATUS+0, 2
	INCF       _K+1, 1
	GOTO       L_main6
L_main7:
	INCF       _J+0, 1
	BTFSC      STATUS+0, 2
	INCF       _J+1, 1
	GOTO       L_main3
L_main4:
	INCF       _I+0, 1
	BTFSC      STATUS+0, 2
	INCF       _I+1, 1
	GOTO       L_main0
L_main1:
L_end_main:
	GOTO       $+0
; end of _main
