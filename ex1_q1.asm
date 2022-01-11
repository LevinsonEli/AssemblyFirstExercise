
; Eliyahu Levinson 
; This program gets a name from user and prints greeting

INCLUDE Irvine32.inc

.data
	studentData BYTE "Eliyahu Levinson: Ex1-Q1", 13, 10, 0
	getNameMsg BYTE "Please Enter Your Name: ", 0
	greetingMsg BYTE "Hello There "
	varName BYTE 10 DUP (0), 0
.code
main PROC
	mov edx, OFFSET studentData
	call writeString
	
	mov edx, OFFSET getNameMsg
	call writeString

	mov edx, OFFSET varName
	mov ecx, SIZEOF varName
	call readString

	mov edx, OFFSET greetingMsg
	call writeString

	call CRLF

	exit
main ENDP
END main