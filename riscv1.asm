.data
    array: .word 10, 20, 30, 40, 50  # Example array with 5 integers
    array_size: .word 5               # Size of the array

.text
.globl main
main:
    la a0, array         # Load address of the array into a0
    lw t1, array_size    # Load the size of the array into t1
    li t2, 0             # Initialize counter t2 to 0

print_loop:
    beq t2, t1, exit     # If counter equals array size, exit loop

    lw a1, 0(a0)         # Load the integer from the array pointed by a0
    li a7, 1             # Set a7 to 1, syscall number for printing integers
    ecall                # Perform syscall to print integer

    addi a0, a0, 4       # Increment the array pointer to next integer
    addi t2, t2, 1       # Increment the loop counter
    j print_loop         # Jump back to the start of the loop

exit:
    li a7, 10            # Set a7 to 10, syscall number for exit
    ecall                # Perform syscall to exit
