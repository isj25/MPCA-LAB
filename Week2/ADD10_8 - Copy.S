.DATA
A: .BYTE 12,23,11,43,2,25,42,10,9,4
SUM: .WORD 0


.TEXT
LDR R0,=A
LDR R1,=SUM

LDR R5,[R1]
MOV R2,#1
MOV R3,#11


L1:LDRB R4,[R0]
ADD R5,R4,R5
ADD R0,R0,#1
ADD R2,R2,#1
CMP R2,R3
BNE L1
STR R5,[R1]
SWI 0X011

