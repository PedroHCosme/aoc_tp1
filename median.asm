.data
.align 2          # Align the following data to a word boundary (4 bytes)
str:
    .string "Enter an integer\n"
space_char:
    .string " "
array_size:
    .string "Insert array size\n"
median_integer:
    .string "\nMedian: "
array:
    .word 4000  # Allocate space for the array, must be a multiple of 4

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
    
    li a7, 5           # syscall for read integer from user
    ecall
    
    sw a0, 0(a1)       # Store the integer into the array at current index
    
    addi a1, a1, 4     # Move to the next integer space in the array
    addi t0, t0, 1     # Increment the index
    blt t0, t2, input_loop  # Loop back if more inputs are needed
    
    # Reset the array address for sorting
    la a1, array

    li s1, 0          # Initialize outer loop counter
    
addi t2, t2, -1 # Force the array being the wanted size  <--------------- Foi umas 3 hora pra resolver com uma linha

outer_loop:
    li s2, 0          # Initialize inner loop counter
    la a0, array      # Load address of array into a0

inner_loop:
    addi a3, a0, 4    # Load address of next integer into a3
    lw t0, 0(a0)      # Load current integer's bytes of array into t0
    lw t1, 0(a3)      # Load next integer's bytes of array into t1
    blt t0, t1, no_swap

    # Swap t0 and t1
    sw t1, 0(a0)
    sw t0, 0(a3)

no_swap:
    addi a0, a0, 4    # Move to the next integer in the array
    addi s2, s2, 1    # Increment the inner loop counter
    blt s2, t2, inner_loop  # Loop back if more integers are to be swapped

    addi s1, s1, 1    # Increment the outer loop counter
    blt s1, t2, outer_loop  # Continue to the next pass

    # Print sorted array
    la a1, array     # Reset array address for printing
    li t0, 0         # Reset index

addi t2, t2, 1

print_loop:
    lw a0, 0(a1)     # Load integer from array byte by byte
    li a7, 1         # syscall to print integer
    ecall
    
    la a0, space_char  # Load address of space character
    li a7, 4          # syscall to print string
    ecall
    
    addi a1, a1, 4   # Move to the next integer in the array
    addi t0, t0, 1   # Increment index
    blt t0, t2, print_loop  # Loop back if more integers are to be printed
    
# Calcular a mediana
li t3, 0            # Initialize median index
srai t3, t2, 1      # t3 = t2 / 2 --> Tell the code if the array is even or odd

la a0, median_integer  # load address of median_integer into a0
li a7, 4           # syscall for print string
ecall

#beqz t3, even_array

#even_array:

#If the array is odd
odd_array:
    la a1, array
    slli t3, t3, 2      # t3 = t3 * 4 (converter índice para deslocamento de bytes)
    add a0, a1, t3      # Get the median integer's address
    lw a0, 0(a0)        # Load median value

    li a7, 1            # syscall to print integer
    ecall
	
li a7, 10        # syscall to exit
ecall
