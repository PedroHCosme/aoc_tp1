.data
.align 2
str:
    .string "Enter an integer\n"
space_char:
    .string " "
array_size:
    .string "Insert array size\n"
array:
    .space 4000                           # Allocate space for 1000 integers

.text
.globl main

main:
    la a1, array

    la a0, array_size
    li a7, 4
    ecall

    li a7, 5
    ecall
    mv s3, a0

    li t0, 0

input_loop:
    la a0, str
    li a7, 4
    ecall
    
    li a7, 5
    ecall

    blt t0, s3, store_integer             # Check if index is within the bounds of the array size
    j input_loop_end                      # If not, skip storing the integer

store_integer:
    sb a0, 0(a1)

    addi a1, a1, 4
    addi t0, t0, 1
    j input_loop

input_loop_end:
    la a1, array

    li s1, 0
outer_loop:
    li s2, 0
    la a0, array

inner_loop:
    addi a3, a0, 4
    lb t0, 0(a0)
    lb t1, 0(a3)
    blt t0, t1, no_swap

    sb t1, 0(a0)
    sb t0, 0(a3)

no_swap:
    addi a0, a0, 4
    addi s2, s2, 1
    blt s2, s3, inner_loop

    addi s1, s1, 1
    blt s1, s3, outer_loop

reset_index:
    la a1, array
    li t0, 0
    j print_loop
    
print_loop:

    lb a0, 0(a1)
    li a7, 1
    ecall
    
    la a0, space_char
    li a7, 4
    ecall
    
    addi a1, a1, 4
    addi t0, t0, 1
    blt t0, s3, print_loop

    li a7, 10
    ecall