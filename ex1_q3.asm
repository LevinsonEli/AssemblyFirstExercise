
; Eliyahu Levinson 
; This program prints the fibonachy's number sequence

INCLUDE Irvine32.inc

.data
	studentData BYTE "Eliyahu Levinson: Ex1-Q3", 13, 10, 0
    fibMsg1 BYTE "Fib(", 0
    fibMsg2 BYTE ")", 0
    equalStr BYTE " = ", 0
    N = 10      ; number of fibonachy to print until
.code
main PROC
	mov edx, OFFSET studentData
	call writeString

    ; the first fibonachy number
	mov edx, OFFSET fibMsg1
	call writeString
    mov eax, 0
    call writeDec
	mov edx, OFFSET fibMsg2
	call writeString
	mov edx, OFFSET equalStr
	call writeString
    call writeDec
    call CRLF

    mov ebx, eax
    
    ; the second fibonachy number
	mov edx, OFFSET fibMsg1
	call writeString
    mov eax, 1
    call writeDec
	mov edx, OFFSET fibMsg2
	call writeString
	mov edx, OFFSET equalStr
	call writeString
    call writeDec
    call CRLF

    mov ecx, N      ; setting the loop counter
    fibLoop:
        xchg eax, ebx       ; counting the fibonachy number
        add eax, ebx

        mov edx, OFFSET fibMsg1     ; printing the number
        call writeString
        mov edx, eax                ; storing the fibonachy's number  in edx for a while
        mov eax, N                  ; calculating the ordinal number
        sub eax, ecx
        add eax, 2
        call writeDec
        mov eax, edx                ; moving the fibonachy's number back to eax
        mov edx, OFFSET fibMsg2
        call writeString
        mov edx, OFFSET equalStr
        call writeString
        call writeDec
        call CRLF
    loop fibLoop

	exit
main ENDP
END main