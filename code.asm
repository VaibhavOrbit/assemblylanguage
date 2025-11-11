Program:
	Data SEGMENT
	A Dw  1234H
	b DW  4231h
	sum Dw  ? 
	carry db  00h

Data Ends
 
code SEGMENT
ASSUME CS:Code, DS: Data
Start : MOV AX, Data
	MOV DS, AX
	MOV AX, A
	ADD AX, B
	JNC Skip
	MOV Carry, 01H
	skip MOV SUM, AX
	INT3
	Code Ends
	End Start
