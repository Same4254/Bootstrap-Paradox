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
string_literals_id dq 0
variable_names_len dq 0
method_names_len dq 0
referenced_names_len dq 0
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
string_15 db "OVER", 0
string_16 db "ROT", 0
string_17 db "==", 0
string_18 db "!=", 0
string_19 db ">", 0
string_20 db ">=", 0
string_21 db "<", 0
string_22 db "<=", 0
string_23 db "AND", 0
string_24 db "NOT", 0
string_25 db "OR", 0
string_26 db "XOR", 0
string_27 db "IF", 0
string_28 db "ELSE", 0
string_29 db "THEN", 0
string_30 db "WHILE", 0
string_31 db "DO", 0
string_32 db "END", 0
string_33 db "VARIABLE", 0
string_34 db "MEM", 0
string_35 db "@", 0
string_36 db "@b", 0
string_37 db "!", 0
string_38 db "!b", 0
string_39 db "FUNC", 0
string_40 db "RET", 0
string_41 db "SYS_READ", 0
string_42 db "SYS_WRITE", 0
string_43 db "SYS_OPEN", 0
string_44 db "SYS_CLOSE", 0
string_45 db "SYS_EXIT", 0
string_46 db "string_", 0
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
string_61 db "mov", 0
string_62 db "and", 0
string_63 db "cmp", 0
string_64 db "jmp", 0
string_65 db "je", 0
string_66 db "jne", 0
string_67 db "setz", 0
string_68 db "setnz", 0
string_69 db "setg", 0
string_70 db "setge", 0
string_71 db "setl", 0
string_72 db "setle", 0
string_73 db "sete", 0
string_74 db "add", 0
string_75 db "sub", 0
string_76 db "div", 0
string_77 db "call", 0
string_78 db ",", 0
string_79 db " ", 0
string_80 db "rax", 0
string_81 db "al", 0
string_82 db "rbx", 0
string_83 db "rcx", 0
string_84 db "rdx", 0
string_85 db "rdi", 0
string_86 db "r12", 0
string_87 db "r12", 0
string_88 db "[", 0
string_89 db "]", 0
string_90 db "section .bss", 0
string_91 db "   the_stack resb 8192", 0
string_92 db "section .text", 0
string_93 db "   global _start", 0
string_94 db "_start:", 0
string_95 db "mov ", 0
string_96 db ", the_stack", 0
string_97 db "[Error. Line: ", 0
string_98 db " Col: ", 0
string_99 db "]: Cannot have newline break in string literal", 0
string_100 db "//", 0
string_101 db "output-forth.asm", 0
string_102 db "input-forth.forth", 0
string_103 db "[Line: ", 0
string_104 db ", Col: ", 0
string_105 db "] ", 0
string_106 db "Token: String Literal (id = ", 0
string_107 db "). ", 0
string_108 db "Token: IMM INT. Value: ", 0
string_109 db "Token: IF. ID: ", 0
string_110 db "Token: ELSE. ID: ", 0
string_111 db "Token: THEN. ID: ", 0
string_112 db "Token: WHILE. ID: ", 0
string_113 db "Token: DO. ID: ", 0
string_114 db "Token: THEN. ID: ", 0
string_115 db "Token: Variable Decl. Name: ", 0
string_116 db "Token: Mem Decl. Name: ", 0
string_117 db ". Length: ", 0
string_118 db "Token: Var Ref. Name: ", 0
string_119 db "Token: Func Decl. Name: ", 0
string_120 db "Token: Func Call. Name: ", 0
string_121 db "Token: ", 0
string_122 db "Unkown token: ", 0
string_123 db "Ran out of space to write string literals", 0
string_124 db "IF", 0
string_125 db "ELSE", 0
string_126 db "Attempted to add ELSE token in a non-IF scope", 0
string_127 db "THEN", 0
string_128 db "Attempted to add THEN token in a non-IF scope", 0
string_129 db "WHILE", 0
string_130 db "DO", 0
string_131 db "Attempted to add DO token in a non-WHILE scope", 0
string_132 db "END", 0
string_133 db "Attempted to add END token in a non-WHILE scope", 0
string_134 db "WHILE loop does not have a corresponding DO", 0
string_135 db "VARIABLE", 0
string_136 db "MEM", 0
string_137 db "[Error. Line: ", 0
string_138 db " Col: ", 0
string_139 db "]: Variable declaration expected a variable name!", 0
string_140 db "[Error. Line: ", 0
string_141 db " Col: ", 0
string_142 db "]: Variable declaration cannot be a keyword!", 0
string_143 db "Ran out of memory for variable names!", 0
string_144 db "MEM block expected an integer size, but got: ", 0
string_145 db "FUNC", 0
string_146 db "[Error. Line: ", 0
string_147 db " Col: ", 0
string_148 db "]: Function declaration expected a name!", 0
string_149 db "[Error. Line: ", 0
string_150 db " Col: ", 0
string_151 db "]: Function name cannot be a keyword!", 0
string_152 db "Ran out of memory for method names!", 0
string_153 db "Ran out of memory for referenced names!", 0
string_154 db "Name does not reference a variable or method: ", 0
string_155 db "; pop ", 0
string_156 db "8", 0
string_157 db "; push ", 0
string_158 db "8", 0
string_159 db "rax", 0
string_160 db "rax", 0
string_161 db "; ", 0
string_162 db "rbx", 0
string_163 db "rax", 0
string_164 db "rax", 0
string_165 db "; Push string: ", 0
string_166 db "; Push address", 0
string_167 db "rax", 0
string_168 db "; Push length", 0
string_169 db "; Push integer: ", 0
string_170 db "add", 0
string_171 db "sub", 0
string_172 db "mul", 0
string_173 db "; Divide", 0
string_174 db "rbx", 0
string_175 db "rax", 0
string_176 db "0", 0
string_177 db "rax", 0
string_178 db "; Divide", 0
string_179 db "rbx", 0
string_180 db "rax", 0
string_181 db "0", 0
string_182 db "rdx", 0
string_183 db "; Print Int", 0
string_184 db "rdi", 0
string_185 db "print_int", 0
string_186 db "; TYPE", 0
string_187 db "rsi", 0
string_188 db "rdi", 0
string_189 db "print", 0
string_190 db "; CR", 0
string_191 db "print_newline_str", 0
string_192 db "; STACK_LEN", 0
string_193 db "0", 0
string_194 db "the_stack", 0
string_195 db "8", 0
string_196 db "rax", 0
string_197 db "; DUP", 0
string_198 db "rax", 0
string_199 db "rax", 0
string_200 db "rax", 0
string_201 db "; 2DUP", 0
string_202 db "rbx", 0
string_203 db "rax", 0
string_204 db "rax", 0
string_205 db "rbx", 0
string_206 db "rax", 0
string_207 db "rbx", 0
string_208 db "; SWAP", 0
string_209 db "rbx", 0
string_210 db "rax", 0
string_211 db "rbx", 0
string_212 db "rax", 0
string_213 db "; SWAP", 0
string_214 db "rbx", 0
string_215 db "rax", 0
string_216 db "rdx", 0
string_217 db "rcx", 0
string_218 db "rcx", 0
string_219 db "rdx", 0
string_220 db "rax", 0
string_221 db "rbx", 0
string_222 db "; DROP", 0
string_223 db "8", 0
string_224 db "; OVER", 0
string_225 db "rax", 0
string_226 db "rbx", 0
string_227 db "rbx", 0
string_228 db "rax", 0
string_229 db "rbx", 0
string_230 db "; OVER", 0
string_231 db "rax", 0
string_232 db "rbx", 0
string_233 db "rcx", 0
string_234 db "rcx", 0
string_235 db "rax", 0
string_236 db "rbx", 0
string_237 db "; equality test", 0
string_238 db "rax", 0
string_239 db "rbx", 0
string_240 db "0", 0
string_241 db "rax", 0
string_242 db "; unequality test", 0
string_243 db "rax", 0
string_244 db "rbx", 0
string_245 db "0", 0
string_246 db "rax", 0
string_247 db "; greater than test", 0
string_248 db "rax", 0
string_249 db "rbx", 0
string_250 db "0", 0
string_251 db "rax", 0
string_252 db "; greater than or equal test", 0
string_253 db "rax", 0
string_254 db "rbx", 0
string_255 db "0", 0
string_256 db "rax", 0
string_257 db "; less than test", 0
string_258 db "rax", 0
string_259 db "rbx", 0
string_260 db "0", 0
string_261 db "rax", 0
string_262 db "; less than or equal test", 0
string_263 db "rax", 0
string_264 db "rbx", 0
string_265 db "0", 0
string_266 db "rax", 0
string_267 db "and", 0
string_268 db "rax", 0
string_269 db "0", 0
string_270 db "0", 0
string_271 db "rax", 0
string_272 db "or", 0
string_273 db "xor", 0
string_274 db "; if", 0
string_275 db "rax", 0
string_276 db "0", 0
string_277 db "else_", 0
string_278 db "then_", 0
string_279 db "if_", 0
string_280 db ":", 0
string_281 db "else_", 0
string_282 db ":", 0
string_283 db "then_", 0
string_284 db ":", 0
string_285 db "while_", 0
string_286 db ":", 0
string_287 db "; condition check", 0
string_288 db "rax", 0
string_289 db "0", 0
string_290 db "end_", 0
string_291 db "; end", 0
string_292 db "while_", 0
string_293 db "end_", 0
string_294 db ":", 0
string_295 db "; reference variable: ", 0
string_296 db "rax", 0
string_297 db "; ptr de-reference", 0
string_298 db "rax", 0
string_299 db "rax", 0
string_300 db "; byte ptr de-reference", 0
string_301 db "rbx", 0
string_302 db "0", 0
string_303 db "byte ", 0
string_304 db "rax", 0
string_305 db ":", 0
string_306 db "ret", 0
string_307 db "rdx", 0
string_308 db "rsi", 0
string_309 db "rdi", 0
string_310 db "0", 0
string_311 db "syscall", 0
string_312 db "rax", 0
string_313 db "rdx", 0
string_314 db "rsi", 0
string_315 db "rdi", 0
string_316 db "1", 0
string_317 db "syscall", 0
string_318 db "rax", 0
string_319 db "rdx", 0
string_320 db "rsi", 0
string_321 db "rdi", 0
string_322 db "2", 0
string_323 db "syscall", 0
string_324 db "rax", 0
string_325 db "rdx", 0
string_326 db "3", 0
string_327 db "syscall", 0
string_328 db "rax", 0
string_329 db "0", 0
string_330 db "60", 0
string_331 db "syscall", 0
string_332 db "rax", 0
in_function dq 0
string_333 db " resb ", 0
string_334 db "section .bss", 0
string_335 db " dq 0", 0
string_336 db "string_", 0
string_337 db " db ", 0
string_338 db ", 0", 0
string_339 db "section .data", 0
string_340 db "Pass 1", 0
string_341 db "PASS 2", 0
string_342 db "section .text", 0
string_343 db "global _start", 0
string_344 db "_start:", 0
string_345 db "; exit", 0
string_346 db "60", 0
string_347 db "0", 0
string_348 db "syscall", 0
