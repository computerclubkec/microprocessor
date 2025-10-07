# 8085 Programs

This directory contains assembly language programs for Intel 8085. The questions listed here falls under the syllabus of IOE(Institute of Engineering)

## Programs

- [x] [q1](q1.asm): Write a program in 8085 to find the largest and smallest bytes from the list of 20 bytes stored starting from memory location C050 H. Store the largest byte and smallest byte in C070H and C071H.(2076,Back)
- [x] [q2](q2.asm): Write a program for 8085 to add the upper and lower nibble of ten 8-bit words stored in a table that starts from location 8B20H. Store the separate results in locations just after the table.(2071,Regular/back)
- [x] [q3](q3.asm): Write a program for 8085 to check if the number in memory 2000H is even or odd. If the number is even store 22H in next memory location else store 11H in next memory.
- [x] [q4](q4.asm): Write an 8085 assembly language program that converts a binary number located at memory address 3000H into a BCD (Binary Coded Decimal) format. The BCD result should be stored at memory locations 4000H, 4001H, and 4002H. Use subroutines 'CONVERT' and 'STORE' to carry out the conversion and storage operations.
- [x] [q5](q5.asm): Write a program for 8085 to convert a 3-digit BCD number stored at memory locations 4000H, 4001H, and 4002H into its binary equivalent and store the result at memory location 5000H.(Similar to 2069,Regular)
- [x] [q6](q6.asm): Load any hex number in register D and E and add these numbers. If sum is greater than FFH, display 01H at output port FEH otherwise displaysum at same port.
- [x] [q7](q7.asm): Load any hex number in register D and E and subtract these numbers. If there is borrow, display 01H at output port FEH, otherwise display 80H at same port.
- [x] [q8](q8.asm): 16 bytes of data ar stored from address 3000H to 300FH. Transfer these blocks of data to destination whose starting address is 2000H.
- [x] [q9](q9.asm): WAP to move a block of 10 bytes of data stored continuously at starting address 6000H to starting address 6004H.
- [x] [q10](q10.asm): Check if bit D6 of a data is 1. If yes move it to register D else insert FFH in register D.
- [x] [q11](q11.asm): Write a program in 8085 to multiply two 8-bit data 05H and 08H by using repetitive addition method and store the result at memory location 2500H.
- [x] [q12](q12.asm): Write a program in 8085 to sort the array of 8-bit datas starting from 8850H in ascending order.
- [x] [q13](q13.asm): WAP to convert an ASCII number stored at location 6100H to Binary. store the result to next memory location. use subroutine.
- [x] [q14](q14.asm): WAP to convert an Binary number stored at location 6200H to ASCII. store the result to next memory location. use subroutine.
- [x] [q15](q15.asm): WAP to find the 2’s complement of a number stored at memory location C100H and store the result at C101H. Use subroutines for complement and add operations.
- [x] [q16](q16.asm): Program to change bit D5 of ten numbers stored at address 7600H if the numbers are greater than or equal to 80H
- [x] [q17](q17.asm): Program to add ten 16-bit BCD numbers and store the 24-bit BCD result 16-bit numbers are stored starting at memory location 9000H Result is stored in B (carry), D (MS byte), and E (LS byte).
- [x] [q18](q18.asm): Write a program for 8085 to convert and copy the ten lower case ASCII codes to upper case from memory location 9050H to 90A0H if any, otherwise copy as they are. Assume there are fifty codes in the source memory. [Note: ASCII code for A=65 … Z=90, a=97 … z=122].(2063 Kartik)
- [x] [q19](q19.asm): Write a program for 8085 to add ten 16-bit BCD numbers from location 4050H and store 24 bit BCD result at the end of the ten given numbers.(2062 Chaitra)
- [x] [q20](q20.asm): Write an 8085 program to display the BCD digits from 0 to 9 the seven segments as in the following diagram. Use the activating data bits same as the segment number as in figure below.(2059 Shrawan)
- [x] [q21](q21.asm): Write a program for 8085 to change the bit D5 of ten numbers stored at address 7600H if the numbers are larger than or equal to 80H.(2061 Ashwin)
- [x] [q22](q22.asm): Write a program for 8085 to find the smallest number among ten numbers stored at memory location 4500H.(2060 Bhadra)
- [x] [q23](q23.asm): Someone has damaged a program written at 4050H for 8085 microprocessor. The damaging is done by changing the bit D7 and bit D5 of each byte. The size of the program is 100 bytes. Now write a program for 8085 to correct this damaged program.(2060 Chaitra)
- [x] [q24](q24.asm): Write a program to transfer eight-bit numbers from 9080H to 9090H if bit D5 is 1 and D3 is 0. Otherwise transfer data by changing bit D2 and D6 from 1 to 0 or from 0 to 1. Assume there are ten numbers.(2064 Shrawan)
- [x] [q25](q25.asm): There are two tables T1, T2 in memory having ten eight bit data in each. Write a program for 8085 to find the difference of the corresponding element of these two tables.Store the result of each operation on the corresponding element of the third table. Remember that the result should not be negative ; it should be |T1 – T2|.(2064 Poush)
- [x] [q26](q26.asm): Write a program for 8085 to transfer data from a table to another if the number of ones in the data is greater than four else store 00 in the next table.(2065 Kartik)
- [ ] [q27](q27.asm): WAP in 8085 to count number of 1-bits in each of 15 bytes starting at D000H and store counts consecutively at D010H.
- [ ] [q28](q28.asm): WAP in 8085 to rotate each byte of a 32-byte table at E000H right by 3 positions and store results at E020H.
- [ ] [q29](q29.asm): WAP in 8085 to swap two blocks of 10 bytes: block A at 9000H and block B at 9010H.
- [ ] [q30](q30.asm): WAP in 8085 to increment each of 20 BCD digits at 4300H by 1 (with BCD correction) and store results at 4314H.
- [ ] [q31](q31.asm): WAP in 8085 to search for a byte key in a table starting at B000H (length at BFFFH). If found, store offset at B100H else store FFH.
- [ ] [q32](q32.asm): WAP in 8085 to compute factorial of a number (≤8) stored at 7000H using subroutine FACT. Store result at 7001H–7002H.
- [ ] [q33](q33.asm): WAP in 8085 to count how many of 40 bytes at 8200H are greater than 7FH and store count at 8300H.
- [ ] [q34](q34.asm): WAP in 8085 to convert 8 ASCII digits from 6100H into packed BCD and store result at 6110H.
- [ ] [q35](q35.asm): WAP in 8085 to compute average of 16 signed 8-bit numbers stored at 9400H and store result at 9410H.
- [ ] [q36](q36.asm): WAP in 8085 to left-shift each byte of a 25-byte table at A200H by 2 bits. Store shifted data at A219H and number of carries at A232H.
- [ ] [q37](q37.asm): WAP in 8085 to add two 16-bit numbers stored at 5000H and 5002H. Store 16-bit sum at 5004H.
- [ ] [q38](q38.asm): WAP in 8085 to reverse a block of 20 bytes beginning at C500H.
- [ ] [q39](q39.asm): WAP in 8085 to replace all occurrences of AAH with 55H in a table starting at D200H (length at D1FFH).
- [ ] [q40](q40.asm): WAP in 8085 to implement a delay subroutine DELAY that produces delay proportional to count in register B.
- [ ] [q41](q41.asm): WAP in 8085 to add two arrays element-wise: array1 at 6000H, array2 at 6010H (length=10). Store results at 6020H and set 602AH=01H if any carry occurs.
- [ ] [q42](q42.asm): WAP in 8085 to convert 30 ASCII characters starting at 9200H to uppercase and copy to 9300H.
- [ ] [q43](q43.asm): WAP in 8085 to check parity of each byte in a 50-byte table at A300H and store 01H at A400H if even parity else 00H.
- [ ] [q44](q44.asm): WAP in 8085 to divide a 16-bit number at 7400H by an 8-bit divisor at 7402H. Store quotient at 7404H–7405H and remainder at 7406H.(Similar to 2070, New Back)
- [ ] [q45](q45.asm): WAP in 8085 to concatenate two tables: T1 at B100H, T2 at B200H. Copy them into B300H and store final length at B2FFH.
- [ ] [q46](q46.asm): WAP to find the 2’s complement of a number stored at memory location C100H and store the result at C101H. Use subroutines for complement and add operations.
