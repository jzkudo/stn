	AREA ADDITION, CODE, READONLY
	
ENTRY                        
	
START
	MOV R5, #10                  
	MOV R0, #0                   
	LDR R1, =VALUE1              
LOOP
	LDR R2, [R1], #2             
	LDR R3, MASK                 
	AND R2, R2, R3               
	ADD R0, R0, R2               
	SUBS R5, R5, #1              
	CMP R5, #0
	BNE LOOP                     
	
	LDR R4, =RESULT              
	STR R0, [R4]                 
	
	NOP
	NOP
	NOP
	
MASK DCD 0X0000FFFF
VALUE1 DCW 0X1111, 0X2222, 0X3333, 0XAAAA, 0XBBBB, 0XCCCC, 0XDDDD, 0XEEEE, 0X4444, 0X5555 ; ARRAY OF 16 BIT NUMBERS(N=10)
	

	AREA DATA2, DATA, READWRITE  
RESULT DCD 0X0
	
	END                          
