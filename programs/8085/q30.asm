; A set of three packed BCD numbers are stored in memory locations starting 
; at 1150H. The seven segment codes of digits 0 to 9 for a common cathode LED
; are stored in memory locations starting at 1170H and the output buffer memory
; is reserved at 1190H. WAP to unpack the BCD number and select an appropriate
; seven segment code for each digit. The codes should be stored in output buffer
; memory.

    LXI SP,2999H
    LXI H,1150H
    MVI D,03H
    LXI B,1190H

NEXT: MOV A,M
      ANI F0H
      RRC
      RRC
      RRC
      RRC
      CALL CODE
      STAX B
      INX B
      MOV A,M
      ANI 0FH
      CALL CODE
      STAX B
      INX B
      INX H
      DCR D
      JNZ NEXT
      HLT

CODE: PUSH H
      LXI H,1170H
      ADD L
      MOV L,A
      MOV A,M
      POP H
      RET
