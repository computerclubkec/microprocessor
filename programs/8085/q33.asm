; A binary number (Suppose FF: 1111 11112) is stored in memory location 2020H.
; Convert the number into BCD and store each BCD as two unpacked BCD digits in
; memory location from 2030H.

        LXI SP,2000H
        LXI H,2020H
        MOV A,M
        CALL PWRTEN
        HLT

PWRTEN: LXI H,2030H
        MVI B,64H
        CALL BINBCD
        MOV M,D
        INX H
        MVI B,0AH
        CALL BINBCD
        MOV M,D
        INX H
        MOV M,A
        RET

BINBCD: MVI D,00H
NEXT:   INR D
        SUB B
        JNC NEXT
        DCR D
        ADD B
        RET