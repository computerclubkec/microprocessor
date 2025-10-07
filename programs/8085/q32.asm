; An 8 bit binary number is stored in memory location 1120H. WAP to store ASCII
; codes of these binary digits (0 to F) in location 1160H and 1161H.

    LXI SP,2000H
    LXI H,1120H
    LXI D,1160H
    MOV A,M
    ANI F0H
    RRC
    RRC
    RRC
    RRC
    CALL CODE
    STAX D
    INX D
    MOV A,M
    ANI 0FH
    CALL CODE
    STAX D
    HLT

CODE: CPI 0AH
      JC L1
      ADD 07H
L1:   ADD 30H
      RET
