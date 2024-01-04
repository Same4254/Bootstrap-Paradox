section .data
input_file dq 0
input_buffer_len dq 0
input_buffer_curr dq 0
output_file dq 0
output_buffer_cap dq 0
output_buffer_length dq 0
token_len dq 0
line dq 0
col dq 0
next_line dq 0
next_col dq 0
scope_stack_len dq 0
scope_next_id dq 0
if_stack_len dq 0
while_stack_len dq 0
string_0 db "r12", 0
string_1 db "section .bss", 0
string_2 db "   the_stack resb 8192", 0
string_3 db "section .text", 0
string_4 db "   global _start", 0
string_5 db "_start:", 0
string_6 db "mov ", 0
string_7 db ", the_stack", 0
string_8 db "[Error. Line: ", 0
string_9 db "Col: ", 0
string_10 db "]: Cannot have newline break in string literal", 0
string_11 db "//", 0
string_12 db "output-forth.asm", 0
string_13 db "input-forth.forth", 0
string_14 db "Line : ", 0
string_15 db "Col: ", 0
string_16 db "Line : ", 0
string_17 db "Col: ", 0
string_18 db "Line : ", 0
string_19 db "Col: ", 0
string_20 db "Line : ", 0
string_21 db "Col: ", 0
string_22 db "Line : ", 0
string_23 db "Col: ", 0
string_24 db "Line : ", 0
string_25 db "Col: ", 0
string_26 db "section .data", 0
