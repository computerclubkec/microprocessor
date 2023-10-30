# 8085 Programs

This directory contains assembly language programs for Intel 8085. The questions listed here falls under the syllabus of IOE(Institute of Engineering)


## Programs

- [x] [q1](q1.asm): Write a program in 8085 to find the largest and smallest bytes from the list of 20 bytes stored starting from memory location C050 H. Store the largest byte and smallest byte in C070H and C071H.
- [x] [q2](q2.asm): Write a program for 8085 to add the upper and lower nibble of ten 8-bit words stored in a table that starts from location 8B20H. Store the separate results in locations just after the table.
- [x] [q3](q3.asm): Write a program for 8085 to check if the number in memory 2000H is even or odd. If the number is even store 22H in next memory location else store 11H in next memory.
- [x] [q4](q4.asm): Write an 8085 assembly language program that converts a binary number located at memory address 3000H into a BCD (Binary Coded Decimal) format. The BCD result should be stored at memory locations 4000H, 4001H, and 4002H. Use subroutines 'CONVERT' and 'STORE' to carry out the conversion and storage operations.
- [x] [q5](q5.asm): Write a program for 8085 to convert a 3-digit BCD number stored at memory locations 4000H, 4001H, and 4002H into its binary equivalent and store the result at memory location 5000H.
- [x] [q6](q6.asm): Load any hex number in register D and E and add these numbers. If sum is greater than FFH, display 01H at output port FEH otherwise displaysum at same port.
- [x] [q7](q7.asm): Load any hex number in register D and E and subtract these numbers. If there is borrow, display 01H at output port FEH, otherwise display 80H at same port.
- [x] [q8](q8.asm): 16 bytes of data ar stored from address 3000H to 300FH. Transfer these blocks of data to destination whose starting address is 2000H.
- [x] [q9](q9.asm): WAP to move a block of 10 bytes of data stored continuously at starting address 6000H to starting address 6004H.
- [x] [q10](q10.asm): Check if bit D6 of a data is 1. If yes move it to registerD else insert FFH in register D.
- [x] [q11](q11.asm): Write a program in 8085 to multiply two 8-bit data 05H and 08H by using repetitive addition method and store the result at memory location 2500H.
