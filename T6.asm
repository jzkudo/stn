	AREA LARGEST, CODE, READONLY
ENTRY                        
	
START
	MOV R5, #6                   
	LDR R1, =VALUE1              
	LDR R2, [R1], #4             
LOOP
	LDR R4, [R1], #4             
	CMP R2, R4                   
	BHI LOOP1

	MOV R2, R4                   
LOOP1
	SUBS R5, R5, #1              
	CMP R5, #0                   
	BNE LOOP                     
	
	LDR R4, =RESULT              
	STR R2, [R4]                 
	
	NOP
	NOP
	NOP

	
VALUE1
	DCD 0X44444444               
	DCD 0X22222222               
	DCD 0X11111111               
	DCD 0X33333333               
	DCD 0XAAAAAAAA               
	DCD 0X88888888               
	DCD 0X99999999               
	
	
	
	AREA DATA2, DATA, READWRITE  
RESULT DCD 0X0
	
	END                          
