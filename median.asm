.data
str:
.string "Enter an integer\n"
space_char:
.string " "
array_size:
.string "Insert array size\n"
array:
.space 999  # VAI SE FUDER RICARDO
debug:
.string "oi"

.text
.globl main

main:

	la a1, array #load address of array into a1
	li t0, 0 #index da array
	
	la a0, array_size # load address of array_size into a0
	li a7, 4 #syscall for print string
	ecall
	
	li a7, 5 #read integer from user and store the integer in t2
	ecall
	mv t2, a0 #move input from user to t2 (array size)
	
input_loop:

	la a0, str #load address of string into a0
	li a7, 4 #syscall for print string
	ecall
	
	# Read integer from user and load into array
	li a7, 5
	ecall
	sb a0, 0(a1) # Store the integer into the array at current index
	
	addi a1, a1, 4      # Move to the next integer space in the array
	addi t0, t0, 1      # Increment the index
	mv t1, t2            # Total number of inputs needed
	blt t0, t1, input_loop  # Loop back if more inputs are needed
	
	
#bubble sort

outer_loop:
	mv t1, zero # Reset no swaps indicator for this pass
	# t3 will iterate from 0 to array_length - t0 - 1
	li t3, 0 # Initialize inner loop counter
	li t4, 1 # t4 is one ahead of t3 for comparison
	sub t5, t2, t0 # Calculate the upper bound for the inner loop
	addi t5, t5, -1 # Decrement by 1 for safe indexing
	
inner_loop:
    # Debug prints commented out to ensure they do not disrupt the program logic
    # mv a0, t3
    # li a7, 1
    # ecall
    # mv a0, t4
    # li a7, 1
    # ecall

    bge t3, t5, end_inner  # Break if t3 has reached the upper bound stored in t5

    # Calculate addresses for t3 and t4 indices
    slli t6, t3, 2
    slli a6, t4, 2

    add t6, t6, a1  # t6 is the address of array[t3]
    add a6, a6, a1  # a6 is the address of array[t4]
    
    lb s2, 0(t6)  # Load word from array[t3]
    lb s3, 0(a6)  # Load word from array[t4]
    # Compare and swap if needed
    ble s2, s3, no_swap
    sb s3, 0(t6)  # Swap operations: store s3 into array[t3]
    sb s2, 0(a6)  # Swap operations: store s2 into array[t4]
    li t1, 1  # Indicate that a swap occurred

    # Optionally print a separator or newline (for debugging)
    # la a0, space_char
    # li a7, 4       # Syscall for print string
    # ecall

no_swap:
    addi t3, t3, 1  # Increment t3
    addi t4, t4, 1  # Increment t4
    j inner_loop    # Jump back to the start of inner_loop
	
end_inner:
	beqz t1, reset_index # If no swaps occurred, array is sorted
	addi t0, t0 1 # Increment the outer loop counter
	j outer_loop # Continue to the next pass
	
reset_index:	
	li t0, 0
	la a1, array
	
mv t1, t2 # Total number of integers to print
print_loop:
	lb a0, 0(a1)
	li a7, 1
	ecall
	
	la a0, space_char
	li a7, 4
	ecall
	
	addi a1, a1, 4        # Move to the next integer in the array
	addi t0, t0, 1        # Increment index
	blt t0, t1, print_loop  # Loop back if more integers are to be printed


    # Exit the program
	li a7, 10            # syscall for exit
	ecall
