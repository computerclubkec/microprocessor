; WAP to convert ASCII at location 1040H to binary and store at location 1050H. 


    LXI SP,2000H
    LXI H,1040H
    LXI D,1050H
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

CODE: CPI 40H
      JC L1
      SUB 07H
L1:   SUB 30H
      RET
