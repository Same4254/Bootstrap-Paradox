section .data
input_file dq 0
input_buffer_len dq 0
input_buffer_curr dq 0
output_file dq 0
output_buffer_cap dq 0
output_buffer_length dq 0
line dq 0
col dq 0
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
string_8 db "output-forth.asm", 0
string_9 db "input-forth.forth", 0
