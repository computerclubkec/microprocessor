; Add two numbers located at 3030H and 4040H. Display sum on Port 1.
; If carry is generated, display it on Port 2. Store sum on 5050H.

    LDA 3030H
    MOV B, A
    LDA 4040H
    ADD B
    STA 5050H
    OUT PORT 1
    JNC L1
    MVI A, 01H
    OUT PORT 2
L1: HLT