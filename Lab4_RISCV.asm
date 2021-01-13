Begin:
    # Reg[1-5]: Used to record data
    addi	x1,     x0,     123 		# x1 = 123  Data 
    addi	x2,     x1,     111 		# x2 = 234  Data   
    addi	x3,     x2,     111 		# x3 = 345  Data
    addi	x4,     x3,     111 		# x4 = 456  Data
    addi	x5,     x4,     111 		# x5 = 567  Data
    # Reg[6-10]: Used to store test address
    addi	x6,     x0,     0x0 		
    addi	x7,     x0,     0x4 		
    addi	x8,     x0,     0x94 		
    addi	x9,     x0,     0x98
    addi	x10,    x0,     0x404
    # Reg[20]: Used to record score
    addi	x20,    x0,     0			# X20 = 0   
Test_Hit:
    sw		x1,     0(x6)		        # &(0x0) = 123        														miss
    sw		x2,     0(x7)		        # &(0x4) = 234		  														hit
    lw		x11,    0(x6)		        # x11 = 123           														hit
    sw		x3,     0(x8)		        # &(0x94) = 345       														miss
    sw		x4,     0(x9)		        # &(0x98) = 346       														hit
    lw		x13,    0(x8)		        # x13 = 345			  														hit
    lw		x12,    0(x7)		        # x12 = 234			  														hit
    lw		x14,    0(x9)		        # x14 = 456			  														hit
    sub		x11,    x11,    x13		    # x11 = x11 - x13 = -222
    sub		x12,    x12,    x14		    # x12 = x12 - x14 = -222
    bne		x11,    x12,    Test_Replacement    # if Not Equal: Skip x20++
    addi	x20,    x20,    1			# x20++
Test_Replacement:
    sw		x5,     0(x10)		        # &(04004) = 567															miss
    lw      x11,    0(x7)               # x11 = &(0x4) = 234														hit
    lw      x12,    0(x10)              # x12 = &(0x4004) = 567 													hit
    addi    x11,    x11,    333         # x11 = x11 + 333 = 567         #  14D58593
    bne		x11,    x12,    Test_Dirty_Block    # if Not Equal: Skip x20++
    addi	x20,    x20,    1			# x20++
Test_Dirty_Block:
    lw      x11,    0(x6)               # x11 = &(0x0) = 123														hit
    lw      x12,    0(x10)              # x12 = &(0x4004) = 567														hit
    addi	x11,    x11,    444		    # x11 = x11 + 444 = 567
    bne		x11,    x12,    End          # if Not Equal: Skip x20++
    addi	x20,    x20,    1			# x20++
End:
    #------------Useless Loop-----------------
    addi	x21,    x0,     3			
    bne		x21,    x20,    End	
    #------------Useless Loop-----------------

