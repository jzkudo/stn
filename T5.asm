	AREA SQUARE, CODE, READONLY
	
ENTRY                        
	
START
	
	LDR R0, = TABLE1             
	LDR R1, = 9                  
	MOV R1, R1, LSL#0x2          
	ADD R0, R0, R1               
	LDR R3, [R0]                 
	
	NOP
	NOP
	NOP
	

	TABLE1 DCD 0X00000000        
	DCD 0X00000001               
	DCD 0X00000004               
	DCD 0X00000009               
	DCD 0X00000010               
	DCD 0X00000019               
	DCD 0X00000024               
	DCD 0X00000031               
	DCD 0X00000040               
	DCD 0X00000051               
	DCD 0X00000064               
	
	END                          
