section .data
	; define bytes with pointer named "text", 10 is newline
	hello_str db "Hello, World!", 10
	newline_str db 10
	prompt_str db "Enter a string: "
	matches_str db "The string matches", 10
	not_matches_str db "The string does not match", 10
	test_str db "bannana"

        character_not_found_str db "Character was not found", 10
        character_found_str db "Character was found", 10

section .bss
	entered_buff resb 32

section .text
	; global exports the method 
	global _start

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
str_ncmp:
	; rdi -> *str1
	; rsi -> *str2
	; rdx -> length
	; r11 -> index
	mov r11, 0

loop:
	mov cl, byte [rdi + r11]
	mov r8b,  byte [rsi + r11]

	cmp cl, r8b
	je check
	
	mov rax, 0
	jmp out
	
check:
	inc r11
	cmp r11, rdx
	jne loop

	mov rax, 1
out:
	ret 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

str_search_char:
	; rdi -> str
	; rsi -> str_len
	; dl -> character
	mov r11, 0
	mov rax, -1
loop_1:
	cmp dl, byte [rdi + r11]
	jne check_1

	mov rax, r11
	jmp out_1
check_1:
	inc r11
	cmp r11, rsi
	jne loop_1
out_1:
	ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
print:
	; rdi -> *str
	; rsi -> length
	mov rdx, rsi
	mov rsi, rdi

	; sys_write
	mov rax, 1
	; stdout
	mov rdi, 1
	syscall

	ret

_start:
	
	;;; test print 
	mov rdi, hello_str
	mov rsi, 14
	call print

	;;; prompt
	mov rdi, prompt_str
	mov rsi, 16
	call print

	;;; get text
	; sys_read
	mov rax, 0
	mov rdi, 0
	mov rsi, entered_buff
	mov rdx, 32
	syscall

	;;; newline
	mov rdi, newline_str
	mov rsi, 1
	call print

	;;; compare
	mov rdi, entered_buff
	mov rsi, test_str
	mov rdx, 7
	call str_ncmp

	cmp rax, 0
	je not_matches

	mov rdi, matches_str
	mov rsi, 19
	call print
	jmp search

not_matches:
	mov rdi, not_matches_str
	mov rsi, 26
	call print

search:
	mov rdi, entered_buff
	mov rsi, 32
        mov dl, 97
        call str_search_char

        cmp rax, -1
        jne found

        mov rdi, character_not_found_str
        mov rsi, 24
        call print

        jmp end
found:
        mov rdi, character_found_str
        mov rsi, 20
        call print

end:
	;;; exit
	mov rax, 60
	; code
	mov rdi, 0
	syscall
