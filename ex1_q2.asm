
; Eliyahu Levinson 
; This program solves the X - Y * Z problem, where X, Y, Z
; are given in _data.inc file. The result stores at RESULT var.

INCLUDE Irvine32.inc
INCLUDE ex1_q2_data.inc

.data
	studentData BYTE "Eliyahu Levinson: Ex1-Q2", 13, 10, 0
	minusStr BYTE " - ", 0
	multiplyStr BYTE " * ", 0
	equalStr Byte " = ", 0
.code
main PROC
	mov edx, OFFSET studentData
	call writeString

	; multiplying Y * Z using loop
	movsx ecx, Y	; setting the counter for loop
	mov eax, 0		; setting the result of Y * Z by 0
	movsx edx, Z

	mulLoop:
		add eax, edx
	loop mulLoop

	neg eax			; -(Y * Z)
	movsx edx, X	
	add eax, edx	; X - (Y * Z)
	mov RESULT, eax ; storing the result

	; printing the output
	mov edx, OFFSET MSG
	call writeString
	movsx eax,  X
	call writeInt
	mov edx, OFFSET minusStr
	call writeString
	movsx eax,  Y
	call writeInt
	mov edx, OFFSET multiplyStr
	call writeString
	movsx eax,  Z
	call writeInt

	mov edx, OFFSET equalStr
	call writeString

	mov eax,  RESULT
	call writeInt

	exit
main ENDP
END main