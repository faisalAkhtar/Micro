; Program for binary to ascii

	.MODEL SMALL
	.DATA
	INPUT DB 10,13 , 'ENTER BINARY NO: $'
	OUTPUT DB 10,13, 'THE ASCII CHARACTER IS:$'
	ARR DB ?
	
	.CODE
	.STARTUP
	MOV AH,09H
	MOV DX,OFFSET INPUT
	INT 21H

	MOV BL, 00H
	MOV CL,08H
	INPUT1: MOV AH,01H
	INT 21H
	SUB AL,30H
	SHL BL,1
	ADD BL,AL
	LOOP INPUT1

	MOV AH,09H
	LEA DX,OUTPUT
	INT 21H
	MOV AH,02H
	MOV DL,BL
	INT 21H

	MOV AH,4CH
	INT 21H
	END
