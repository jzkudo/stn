	; / * PROGRAM TO ADD FIRST TEN INTEGER NUMBERS * / 
	; / * RESULT: 55 (37H) (IN R3) * / 
	; / * SET A BREAKPOINT AT NOP INSTRUCTION, RUN THE PROGRAM & CHECK THE RESULT * / 
	
	AREA ADDITION, CODE, READONLY
	
ENTRY                        ;Mark first instruction to execute
	
START
	MOV R5, #10                  ; INTIALISE COUNTER TO 10 (i.e. N=10)
	MOV R0, #0                   ; INTIALISE SUM TO ZERO
	MOV R1, #1                   ; INITIALISE FIRST NUMBER
	
LOOP
	ADD R3, R0, R1               ; ADD THE ELEMENTS
	MOV R0, R3
	ADD R1, #1
	SUBS R5, R5, #1              ; DECREMENT COUNTER
	CMP R5, #0
	BNE LOOP                     ; LOOK BACK TILL ARRAY ENDS
	
	NOP
	NOP
	NOP
	
	END                          ; Mark end of file
