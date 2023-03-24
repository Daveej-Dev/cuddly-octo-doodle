do_add:
    xor t1, x0, a0          #Save x (a0) to a temporary register so the value can be manipulated later
    xor t2, x0, a1          #Save y (a1) to a temporary register so the value can be manipulated later
    
    while:
    beq a1, x0, Done        #Branch to "Done" if a1 (y) is equal 0
    and t0, a0, a1          #Perform an "and" operation on a0 (x) and a1 (y) and place the result in t1 (which will be the carry variable)
    xor a0, a0, a1          #Perform an "xor" operation on a0 (x) and a1 (y) and place the result in a0 (x)
    slli a1, t0, 1          #Shift the bits in t0 (carry) to the left by 1 position and place the result in a1 (y)
    j while             #Jump back up to the beginning of the while loop
    
    Done:
    xor t3, x0, a0          #Use XOR to copy the addition result (a0) into a temp register (t3)
    srli t1, t1, 31         #Right shift the the temp reg containing x (t1) by 31 bits to get the most significant bit
    srli t2, t2, 31         #Right shift the the temp reg containing y (t2) by 31 bits to get the most significant bit
    xor t4, t1, t2          #Check if signs are the same, 0 if so, 1 if not
    bne t4, x0, NO_OVERFLOW_ADD #If signs are not the same, no overflow is possible, so branch to NO_OVERFLOW_ADD
    
    srli t3, t3, 31         #Right shift the the temp reg containing result (t3) by 31 bits to get the most sig digit
    
    #Because we did not branch to NO_OVERFLOW_ADD, the signs of x and y are either both 1 or both zero, so the AND instruction below
    #serves to check which case is true
    and t1, t1, t2          #AND the most sig bits of x (t1) and y (t2) to recieve a 1 if both 1 (negative), 0 if not (positive), store this result in t1
    xor t1, t1, t3          #Check if signs of both x and y are the same as the result, 0 if so, 1 if not (overflow)
    bne x0, t1, OVERFLOW_ADD	#If the xor result is nonzero, branch to "OVERFLOW_ADD"
    j NO_OVERFLOW_ADD		#Unconditional jump to "NO_OVERFLOW_ADD"
    
    OVERFLOW_ADD:
    ori a1, x0, -1          #Set overflow flag to -1
    
    NO_OVERFLOW_ADD:
    jr ra                   #Jump to the return address contained in ra
