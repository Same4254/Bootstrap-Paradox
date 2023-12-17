# Bootstrap-Paradox
This project is a compiler for a language called Forth, written purely in x86 assembly from scratch. The assembly is handwritten and there is no cheating allowed with the use of an existing compiler to generate the assembly for me.

## Forewarning 
I make no promise that this compiler is 100% correct nor do I attest to the quality of the code thereof. The intent of this project was to learn about how compilers work and the challenges an implementation faces. In the long-term I wish to gain a further understanding of compiler optimizations; this project was a step to that end. Particularly learning x86 assembly and the challenges of a first compiler.

## Why?
- The idea sounded ridiculous, that being to write a compiler from complete scratch in assembly. The reason it sounded so interesting is because of the notion that writing a compiler in a less featured language to produce a better language feels akin to pulling yourself up by your own bootstraps (hence the name of the project). 
- I wanted to learn how to read assembly fluently, this seemed like a decent way of achieving that now having written thousands of lines of instructions.

## What is Forth?
Forth is an extremely simple language, both to parse and translate. This simplicity is by far its best feature. The language is essentially a Push Down Automata (PDA), or in other words a stack-machine, with extra features. It performs a series of operations on this stack to perform computation. For ecample, take the following code:
```
1 2 +
```
This code will begin by pushing 1 onto the stack, followed by pusing 2 onto the stack. Then the + operator will pop two elements off the stack, add them together, and push the result back onto the stack. It is here where the reader may see the appeal of Forth's simplicity, given this project's... unique constraints. The notation is written in postfix hence parsing becomes simple and lacks any associative ambiguity. The stack operations also lack scopes, making the translation that much more simple.

### Declaring a function and IF statements
While the standard for Forth is rather up to interpreation it seems, this compiler also supports global variables, functions, if statements, and comments. Take the following example:
```
FUNC GREATER_THAN_5 (n -> bool)
  5 > IF
    1
  ELSE
    0
  THEN
  RET
```
- FUNC declares that a function is being written.
- GREATER_THAN_5 is the name of the function.
- () represents a comment. It is customary in Forth to write a comment on a function which describes how the function will manipulate the stack. This is because functions in Forth have no real calling convention. Rather, it simply expects there to be elements on the stack to manipulate.
- 5 pushes a 5 onto the stack
- > will take the top two elements on the stack, compare them, and the push a boolen (0 or 1) onto the stack
- IF will check the boolean value (0 or 1) and branch on that value as you would expect
- THEN terminates the IF statement, since there is no delimiter to denote when the expressions within the IF is done
- RET will return from the function to where the function was called from

### Calling a function
This function can be called by:
```
10 GREATER_THAN_5 .
```
Here, period prints the integer at the top of the stack (note that this will pop the stack, therefore this value will no longer be on the stack after printing). This code will print 1, since 10 is greater than 5.

### Stack manipulation
The astute may realize that the top value on the stack is likely not the only important value on the stack. If the programmer needs to get to the second value on the stack, and preserve the first value, our current tools will not provide this. To accommodate for this, there are a series of stack manipulation functions that will manipulate the stack. These are outlined below:

| Name  | Stack Notation                 | Description                                                               |
|-------|--------------------------------|---------------------------------------------------------------------------|
| DUP   | ( n -> n n )                   | Duplicates the top element on the stack                                   |
| SWAP  | ( n1 n2 -> n2 n1               | Birings the element, n1, from the second position to the top of the stack |
| OVER  | ( n1 n2 -> n1 n2 n1            | Copies the second element in the stack to the top of the stack            |
| ROT   | ( n1 n2 n3 -> n2 n3 n1 )       | Brings the third element to the top of the stack                          |
| DROP  | ( n -> )                       | Pops the top value off of the stack                                       |
| 2SWAP | ( a1 a2 b1 b2 -> b1 b2 a1 a2 ) | Swaps the top two pairs of numbers                                        |
| 2DUP  | ( a1 a2 -> a1 a2 a1 a2 )       | Duplicates the top two elements on the stack                              |

### Variables and "Arrays"
This compiler has light support for variables and feather light support for arrays. Variables are merely memory addresses that will be put onto the stack and can be dereferenced and stored into. Consider the example below:
```
VARIABLE myVar
2 myVar !
myVar @ .
```
- ! will pop the pointer off of the stack and pop the value after that and stor the value at the given memory address (value assumed to be a 64 bit integer)
- @ will pop the pointer off of the stack and dereference it and push the value onto the stack (value assumed to be a 64 bit integer)
There is also support for single byte storing and dereferencing denoted as !b and @b. These are used for string maipulations.

Array are also, somewhat supported. Calling these "arrays" is a little misleading. The compiler just allows you to allocate a block of memory (at compile time) with a custom size, You can write your own array accessing methods! Below you can see the use of "arrays" to buffer the content of a file. This also demonstrates the function hooks to make Linux syscalls, that being to open and write to files. Memory blocks work the same way as variables do, they just have a custom size. 
```
VARIABLE fp
MEM mem 1024

( open the file )
"./test-programs/add.forth" DROP 0 0 SYS_OPEN
fp !

( read the content )
fp @ mem 1024 SYS_READ

mem SWAP TYPE
``` 

## Lessons Learned
C is in fact a high level language...
