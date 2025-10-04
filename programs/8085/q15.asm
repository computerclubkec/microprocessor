LXI H, C100H      ; Initialize H-L pair to point to memory location C100H
MOV A, M          ; Move the content of memory C100H to accumulator
CALL COMPLEMENT   ; Call subroutine to get 1's complement
INR A             ; Increment to get 2's complement
INX H             ; Move to next memory location C101H
MOV M, A          ; Store the 2’s complement at C101H
HLT               ; Terminate program

COMPLEMENT:       ; Subroutine to find 1’s complement
  CMA             ; Complement accumulator
  RET             ; Return from subroutine
