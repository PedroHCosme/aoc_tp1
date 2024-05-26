.data
.align 2          # Align the following data to a word boundary (4 bytes)
str:
    .string "Enter a float\n"
space_char:
    .string " "
array_size:
    .string "Insert array size\n"
median_float:
    .string "\nMedian: "
array:
    .word 4000   # Allocate space for the array, enough for 1000 floats (4 bytes each)

.text
.globl main

main:
    la a1, array       # load address of array into a1
    
    la a0, array_size  # load address of array_size into a0
    li a7, 4           # syscall for print string
    ecall
    
    li a7, 5           # syscall for read integer from user
    ecall
    mv t2, a0          # move input (array size) from a0 to t2
    
    li t0, 0           # index of the array

input_loop:
    la a0, str         # load address of string into a0
    li a7, 4           # syscall for print string
    ecall
    
    li a7, 6          # syscall for read float from user
    ecall
    
    fsw fa0, 0(a1)      # Store the float into the array at current index
    
    addi a1, a1, 4     # Move to the next float space in the array
    addi t0, t0, 1     # Increment the index
    blt t0, t2, input_loop  # Loop back if more inputs are needed
    
    # Reset the array address for sorting
    la a1, array

    li s1, 0          # Initialize outer loop counter

addi t2, t2, -1   # Force the array being the wanted size

outer_loop:
    li s2, 0          # Initialize inner loop counter
    la a0, array      # Load address of array into a0

inner_loop:
    addi a3, a0, 4    # Load address of next float into a3
    flw fa1, 0(a0)     # Load current float into fa1
    flw fa2, 0(a3)     # Load next float into fa2
    flt.s t1, fa1, fa2  # Compare fa1 and fa2 (fa1 < fa2)
    bne  t1, zero, no_swap  # No swap needed if fa1 < fa2

    # Swap fa1 and fa2
    fsw fa2, 0(a0)
    fsw fa1, 0(a3)

no_swap:
    addi a0, a0, 4    # Move to the next float in the array
    addi s2, s2, 1    # Increment the inner loop counter
    blt s2, t2, inner_loop  # Loop back if more floats are to be swapped

    addi s1, s1, 1    # Increment the outer loop counter
    blt s1, t2, outer_loop  # Continue to the next pass

    # Print sorted array
    la a1, array     # Reset array address for printing
    li t0, 0         # Reset index

addi t2, t2, 1

print_loop:
    flw fa0, 0(a1)     # Load float from array
    li a7, 2          # syscall to print float
    ecall
    
    la a0, space_char  # Load address of space character
    li a7, 4          # syscall to print string
    ecall
    
    addi a1, a1, 4   # Move to the next float in the array
    addi t0, t0, 1   # Increment index
    blt t0, t2, print_loop  # Loop back if more floats are to be printed
    
# Calculate median
li t3, 0            # Initialize median index
srai t3, t2, 1      # t3 = t2 / 2

la a0, median_float  # load address of median_float into a0
li a7, 4           # syscall for print string
ecall 

# Check if the array size is even or odd
andi t4, t2, 1      # t4 = t2 & 1 (checks if the array size is odd)
beqz t4, even_array # If t4 is 0, the array size is even

# If the array size is odd
odd_array:
    la a1, array
    slli t3, t3, 2      # t3 = t3 * 4 --> Convert the integer value into bytes
    add a0, a1, t3      # Gets the median float's address
    flw fa0, 0(a0)      # Load median value

    li a7, 2            # syscall to print float
    ecall

    # Exit the program
    li a7, 10           # syscall for exit
    ecall

# If the array size is even
even_array:
    la a1, array
    slli t3, t3, 2      # t3 = t3 * 4 --> Convert the integer value into bytes
    add a0, a1, t3      # Get the second median float's address
    flw fa0, 0(a0)      # Load the second median value

    addi t3, t3, -4      # Decrement t3 by 4 to get the previous float's address
    add a0, a1, t3      # Get the first median float's address
    flw fa1, 0(a0)      # Load the first median value

    fadd.s fa0, fa0, fa1  # fa0 = fa0 + fa1 (sum the two median values)
    li t1, 0x40000000    # 2 in IIEEE734
    fmv.s.x fa1, t1      # Move bit pattern to fa1

    fdiv.s fa0, fa0, fa1   # Divide by 2

    li a7, 2            # syscall to print float
    ecall

    # Exit the program
    li a7, 10           # syscall for exit
    ecall
