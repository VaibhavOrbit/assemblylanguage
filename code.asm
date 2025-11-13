
Data SEGMENT 	 //Starts a segment by the name Data
	A Dw  1234H 	//Declares A as 16bit with value 1234H
	b DW  4231H  //Declares B as 16bits  with value 4321H
	sum Dw  ? 
	carry db  00H 

Data Ends
 
code SEGMENT
ASSUME CS:Code, DS: Data  // Informs the assembler about the correct segments 
Start : MOV AX, Data       // Puts segment address of Data into AX
	MOV DS, AX			// Transfer segment address of Data from AX to DS
	MOV AX, A			// Gets the value of A into AX
	ADD AX, B			// Adds the value of B into AX 
	JNC Skip			// if no carry then make variable "carry=1"
	MOV Carry, 01H       //  if carry produced then make variable "carry=1"
	skip MOV SUM, AX     //  store the sum in the variable "Sum"
	INT3				// Optional BReakpoint
	Code Ends
	End Start
