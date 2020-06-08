# Load some data into memory
addi $t0, $zero, 15     # $t0 = 0xF
sw $t0, 0($zero)        # Copy $t0 to memory[0]
addi $t1, $zero, 240    # $t1 = 0xF0
sw $t1, 4($zero)        # Copy $t1 to memory[4]

# Do some calculations
# memory[8] = 0xF0 * (0xF + 0xF0)

add $t3, $t0, $t1       # $t3 = $t0 + $t1
lw $t4, 4($zero)        # Copy memory[4] to $t4
mult $t5, $t4, $t3      # $t5 = $t4 * $t3
sw $t5, 8($zero)        # Copy $t5 to memory[8]

# Verify that the results are correct
# memory[8] = 240*(15+240) = 61200 = 0xEF10

lw $s0, 8($zero)
addi, $s1, $zero, 61200
addi $s7, $zero, 1
beq $s0, $s1, 1
addi $s7, $s7, 1

# If correct, $s7 == 1.
# If not correct, $s7 == 2.





lw $s2, 20($s1)
and $s7, $s2, $s5
or $s3, $s4, $2



sub $s2, $s1, $s3
and $s7, $s2, $s5
or $t1, $t6, $s2
add $t3, $s2, $s2
sw $t4, 10($s2)


lw $s2, 20($s1)
sub $t2, $s2, $t3
