.data
.align 2          # Align the following data to a word boundary (4 bytes)
str:
    .string "Enter a float\n"  # String to prompt user for float input
space_char:
    .string " "  # String for a space character
array_size:
    .string "Insert array size\n"  # String to prompt user for array size
median_float:
    .string "\nMedian: "  # String to print before the median value
array:
    .word 4000   # Allocate space for the array, enough for 1000 floats (4 bytes each)

.text
.globl main

main:
    la a1, array       # Load the address of the array into a1
    
    la a0, array_size  # Load the address of the array_size string into a0
    li a7, 4           # System call number for print string
    ecall              # Execute system call
    
    li a7, 5           # System call number for read integer from user
    ecall              # Execute system call
    li t5, 1
    beq a0, t5, one_space_array  # If the array size is 1, jump to one_space_array
    mv t2, a0          # Move the input (array size) from a0 to t2
    
    li t0, 0           # Initialize the index of the array to 0

# Input loop for reading floats from the user
input_loop:
    la a0, str         # Load the address of the string into a0
    li a7, 4           # System call number for print string
    ecall              # Execute system call
    
    li a7, 6           # System call number for read float from user
    ecall              # Execute system call
    
    fsw fa0, 0(a1)     # Store the float into the array at the current index
    
    addi a1, a1, 4     # Move to the next float space in the array
    addi t0, t0, 1     # Increment the index
    blt t0, t2, input_loop  # Loop back if more inputs are needed
    
    # Reset the array address for sorting
    la a1, array

    li s1, 0          # Initialize outer loop counter

addi t2, t2, -1   # Force the array being the wanted size    

# Outer loop for bubble sort
outer_loop:
    li s2, 0          # Initialize inner loop counter
    la a0, array      # Load address of array into a0

# Inner loop for bubble sort
inner_loop:
    addi a3, a0, 4    # Load address of next float into a3
    flw fa1, 0(a0)    # Load current float into fa1
    flw fa2, 0(a3)    # Load next float into fa2
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

# Loop for printing the sorted array
print_loop:
    flw fa0, 0(a1)     # Load float from array
    li a7, 2           # System call number to print float
    ecall              # Execute system call
    
    la a0, space_char  # Load address of space character
    li a7, 4           # System call number to print string
    ecall              # Execute system call
    
    addi a1, a1, 4    # Move to the next float in the array
    addi t0, t0, 1    # Increment index
    blt t0, t2, print_loop  # Loop back if more floats are to be printed
    
# Calculate median
li t3, 0            # Initialize median index
srai t3, t2, 1      # t3 = t2 / 2

la a0, median_float  # Load address of median_float string into a0
li a7, 4            # System call number for print string
ecall               # Execute system call

# Check if the array size is even or odd
andi t4, t2, 1      # t4 = t2 & 1 (checks if the array size is odd)
beqz t4, even_array # If t4 is 0, the array size is even

# If the array size is odd
odd_array:
    la a1, array
    slli t3, t3, 2      # t3 = t3 * 4 --> Convert the integer value into bytes
    add a0, a1, t3      # Gets the median float's address
    flw fa0, 0(a0)      # Load median value

    li a7, 2            # System call number to print float
    ecall               # Execute system call

    # Exit the program
    li a7, 10           # System call number for exit
    ecall

# If the array size is even
even_array:
    la a1, array
    slli t3, t3, 2      # t3 = t3 * 4 --> Convert the integer value into bytes
    add a0, a1, t3      # Get the second median float's address
    flw fa0, 0(a0)      # Load the second median value

    addi t3, t3, -4     # Decrement t3 by 4 to get the previous float's address
    add a0, a1, t3      # Get the first median float's address
    flw fa1, 0(a0)      # Load the first median value

    fadd.s fa0, fa0, fa1  # fa0 = fa0 + fa1 (sum the two median values)
    li t1, 0x40000000    # 2 in IIEEE734
    fmv.s.x fa1, t1      # Move value from t1 to fa1

    fdiv.s fa0, fa0, fa1   # Divide by 2

    li a7, 2            # System call number to print float
    ecall               # Execute system call

    # Exit the program
    li a7, 10           # System call number for exit
    ecall
    
one_space_array:
    la a0, str         # Load address of string into a0
    li a7, 4           # System call number for print string
    ecall              # Execute system call
    
    li a7, 6           # System call number for read float from user
    ecall              # Execute system call
    
    la a0, median_float # Load address of median_float string
    li a7, 4           # System call number for print string
    ecall              # Execute system call
    
    fsw fa0, 0(a1)     # Store the float into the array at current index
    li a7, 2           # System call number to print the float value
    ecall              # Execute system call
    
    li a7, 10          # System call number for exit
    ecall              # Execute system call