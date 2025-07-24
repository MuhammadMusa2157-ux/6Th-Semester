main:
    li $t1, 1    # Load the immediate value 1 into register $t1 [cite: 1537, 1538, 1539, 1540, 1546, 1547]
    add $t0, $t1, 2  # Add the value in $t1 and the immediate value 2, store the result in $t0 [cite: 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1546, 1547]
    
    li $v0, 10   # Load the syscall code for exit into register $v0 [cite: 1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559, 1560]
    syscall     # Execute the syscall to exit the program [cite: 1560]