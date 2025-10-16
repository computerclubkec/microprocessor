# 8085 Programs

This directory contains assembly language programs for Intel 8085. The questions listed here falls under the syllabus of IOE(Institute of Engineering)

## Programs

- [x] [q1](q1.asm): Write a program in 8085 to find the largest and smallest bytes from the list of 20 bytes stored starting from memory location C050 H. Store the largest byte and smallest byte in C070H and C071H.(2076,Back)
- [x] [q2](q2.asm): Write a program for 8085 to add the upper and lower nibble of ten 8-bit words stored in a table that starts from location 8B20H. Store the separate results in locations just after the table.(2071,Regular/back)
- [x] [q3](q3.asm): Write a program for 8085 to check if the number in memory 2000H is even or odd. If the number is even store 22H in next memory location else store 11H in next memory.
- [x] [q4](q4.asm): Write an 8085 assembly language program that converts a binary number located at memory address 3000H into a BCD (Binary Coded Decimal) format. The BCD result should be stored at memory locations 4000H, 4001H, and 4002H. Use subroutines 'CONVERT' and 'STORE' to carry out the conversion and storage operations.
- [x] [q5](q5.asm): Write a program for 8085 to convert a 3-digit BCD number stored at memory locations 4000H, 4001H, and 4002H into its binary equivalent and store the result at memory location 5000H.(Similar to 2069,Regular)
- [x] [q6](q6.asm): Load any hex number in register D and E and add these numbers. If sum is greater than FFH, display 01H at output port FEH otherwise display sum at same port.
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
- [x] [q27](q27.asm): A dividend is stored in memory location 2020H and a divisor is stored in 2021H. WAP to divide these numbers and store quotient and remainder from 2040H.
- [x] [q28](q28.asm): A set of ten packed BCD numbers is stored in the memory location starting at 1150H. WAP to add these numbers in BCD. If carry is generated save it in register B and adjust it for BCD. The final sum is less than 9999 BCD.
- [x] [q29](q29.asm): A multiplicand is stored in memory location 1150H and a multiplier is stored in location 1151H. WAP to multiply these numbers and store result from 1160H.
- [x] [q30](q30.asm): A set of three packed BCD numbers are stored in memory locations starting at 1150H. The seven segment codes of digits 0 to 9 for a common cathode LED are stored in memory locations starting at 1170H and the output buffer memory is reserved at 1190H. WAP to unpack the BCD number and select an appropriate seven segment code for each digit. The codes should be stored in output buffer memory.
- [x] [q31](q31.asm): WAP to convert ASCII at location 1040H to binary and store at location 1050H.
- [x] [q32](q32.asm): An 8 bit binary number is stored in memory location 1120H. WAP to store ASCII codes of these binary digits (0 to F) in location 1160H and 1161H.
