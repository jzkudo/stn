	AREA FACTORIAL, CODE, READONLY
	
ENTRY                        ;Mark first instruction to execute
	
START
	MOV r0, #7                   ; STORE FACTORIAL NUMBER IN R0
	MOV r1, r0                   ; MOVE THE SAME NUMBER IN R1
	
FACT 
	SUBS r1, r1, #1         ; SUBTRACTION
	CMP r1, #1                   ; COMPARISON
	BEQ STOP
	MUL r3, r0, r1               ; ; MULTIPLICATION
	MOV r0, r3                   ; Result
	BNE FACT    ; BRANCH TO THE LOOP IF NOT EQUAL
	
STOP
	NOP
	NOP
	NOP
	
	END                          ;Mark end of file Output: