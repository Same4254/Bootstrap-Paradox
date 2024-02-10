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
token_struct_len dq 0
token_id_to_string_len dq 0
string_literals_len dq 0
variable_names_len dq 0
method_names_len dq 0
scope_stack_len dq 0
scope_next_id dq 0
if_stack_len dq 0
while_stack_len dq 0
string_0 db "r12", 0
string_1 db "+", 0
string_2 db "-", 0
string_3 db "*", 0
string_4 db "/", 0
string_5 db "%", 0
string_6 db ".", 0
string_7 db "TYPE", 0
string_8 db "CR", 0
string_9 db "STACK_LEN", 0
string_10 db "DUP", 0
string_11 db "2DUP", 0
string_12 db "SWAP", 0
string_13 db "2SWAP", 0
string_14 db "DROP", 0
string_15 db "2DROP", 0
string_16 db "OVER", 0
string_17 db "ROT", 0
string_18 db "==", 0
string_19 db "!=", 0
string_20 db ">", 0
string_21 db ">=", 0
string_22 db "<", 0
string_23 db "<=", 0
string_24 db "AND", 0
string_25 db "NOT", 0
string_26 db "OR", 0
string_27 db "XOR", 0
string_28 db "IF", 0
string_29 db "ELSE", 0
string_30 db "THEN", 0
string_31 db "WHILE", 0
string_32 db "DO", 0
string_33 db "END", 0
string_34 db "VARIABLE", 0
string_35 db "MEM", 0
string_36 db "@", 0
string_37 db "@b", 0
string_38 db "!", 0
string_39 db "!b", 0
string_40 db "FUNC", 0
string_41 db "RET", 0
string_42 db "SYS_READ", 0
string_43 db "SYS_WRITE", 0
string_44 db "SYS_OPEN", 0
string_45 db "SYS_CLOSE", 0
string_46 db "SYS_EXIT", 0
string_47 db "Out of memory for tokens!", 0
string_48 db "Out of memory to push scope!", 0
string_49 db "Out of memory in IF stack", 0
string_50 db "Out of memory in WHILE stack", 0
string_51 db "Cannot pop scope stack of length 0", 0
string_52 db "Scope at the top of the stack does not match given scope id", 0
string_53 db "Cannot pop IF stack of length 0", 0
string_54 db "IF at the top of the stack does not match given id", 0
string_55 db "Cannot pop WHILE stack of length 0", 0
string_56 db "WHILE at the top of the stack does not match given id", 0
string_57 db "Cannot check the top of an empty stack", 0
string_58 db "Cannot check the top of IF stack when empty", 0
string_59 db "Cannot check the top of an empty stack", 0
string_60 db "Cannot check the top of WHILE stack when empty", 0
string_61 db "section .bss", 0
string_62 db "   the_stack resb 8192", 0
string_63 db "section .text", 0
string_64 db "   global _start", 0
string_65 db "_start:", 0
string_66 db "mov ", 0
string_67 db ", the_stack", 0
string_68 db "[Error. Line: ", 0
string_69 db " Col: ", 0
string_70 db "]: Cannot have newline break in string literal", 0
string_71 db "//", 0
string_72 db "output-forth.asm", 0
string_73 db "input-forth.forth", 0
string_74 db "[Line: ", 0
string_75 db ", Col: ", 0
string_76 db "] ", 0
string_77 db "Token: String Literal. String: ", 0
string_78 db "Token: IMM INT. Value: ", 0
string_79 db "Token: IF. ID: ", 0
string_80 db "Token: ELSE. ID: ", 0
string_81 db "Token: THEN. ID: ", 0
string_82 db "Token: WHILE. ID: ", 0
string_83 db "Token: DO. ID: ", 0
string_84 db "Token: THEN. ID: ", 0
string_85 db "Token: Variable Decl. Name: ", 0
string_86 db "Token: Mem Decl. Name: ", 0
string_87 db "Token: Func Decl. Name: ", 0
string_88 db "Token: ", 0
string_89 db "Unkown token id: ", 0
string_90 db "Ran out of space to write string literals", 0
string_91 db "VARIABLE", 0
string_92 db "MEM", 0
string_93 db "[Error. Line: ", 0
string_94 db " Col: ", 0
string_95 db "]: Variable declaration expected a variable name!", 0
string_96 db "[Error. Line: ", 0
string_97 db " Col: ", 0
string_98 db "]: Variable declaration cannot be a keyword!", 0
string_99 db "Ran out of memory for variable names!", 0
string_100 db "IF", 0
string_101 db "ELSE", 0
string_102 db "Attempted to add ELSE token in a non-IF scope", 0
string_103 db "THEN", 0
string_104 db "Attempted to add THEN token in a non-IF scope", 0
string_105 db "WHILE", 0
string_106 db "DO", 0
string_107 db "Attempted to add DO token in a non-WHILE scope", 0
string_108 db "END", 0
string_109 db "Attempted to add END token in a non-WHILE scope", 0
string_110 db "WHILE loop does not have a corresponding DO", 0
string_111 db "FUNC", 0
string_112 db "[Error. Line: ", 0
string_113 db " Col: ", 0
string_114 db "]: Function declaration expected a name!", 0
string_115 db "[Error. Line: ", 0
string_116 db " Col: ", 0
string_117 db "]: Function name cannot be a keyword!", 0
string_118 db "Ran out of memory for method names!", 0
string_119 db "Unrecognized Token. ", 0
string_120 db "Line: ", 0
string_121 db ", Col: ", 0
string_122 db ". ", 0
