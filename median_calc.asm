.data

.align 2 
int_prompt:
    .string "Enter an integer\n"
space_char:
    .string " "
array_size:
    .string "Insert array size \n"
array:
    .space 1000

.text
.gobl main

main:
    la a1, array

    la a0, array_size
    li a7, 4
    ecall

    li a7, 5
    ecall
    mv t0, a0 #move array size from a0 to t0
    
    li t1, 0

    la a0, int_prompt #load address of int_prompt into a0
    li a7, 4 #syscall to print int_prompt
    ecall

input_loop:
    li a7, 5 #syscall to read integer
    ecall

    sb a0, 0(a1)

    addi a1, a1, 4
    addi t1, t1, 1
    blt t1, t0, input_loop
