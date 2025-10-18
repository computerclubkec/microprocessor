; Write an Assembly Language Program that retrieves a data located at 2050H and
; it displays, if it is even and stores FFH on that location if it is odd.

    LDA 2050H
    ANI 01H
    JNZ L1
    LDA 2050H
    OUT PORT 1
    HLT
L1: MVI A, FFH
    STA 2050H
    HLT