.text
# O maior n�mero considerado � 999 que tem 10 bits.
# Logo ser� necess�rio 9 divis�es
# Imprime os restos das divis�es e o quociente da �ltima div (bit mais significativo)
main:	
addi $2, $0, 5
syscall
add $8, $2, $0
addi $25, $0, 2
	
div $8, $25
mflo $8
mfhi $9	#bit menos sig no reg 9
	
div $8, $25 #Div do quociente por 2, novamente.
mflo $8
mfhi $10 #bit meio reg 10
	
div $8, $25
mflo $8
mfhi $11 #bit meio no reg 11
	
div $8, $25
mflo $8
mfhi $12 #bit meio no reg 12
	
div $8, $25
mflo $8
mfhi $13 #bit meio no reg 13
	
div $8, $25
mflo $8
mfhi $14 #bit meio no reg 14
	
div $8, $25
mflo $8
mfhi $15 #bit meio no reg 15
	
div $8, $25
mflo $8		
mfhi $16 #bit meio no reg 15	

div $8, $25
mflo $8	#bit mais sig no reg 8
mfhi $17 #bit meio no reg 17
	
impressao:
add $4, $0, $8
addi $2, $0, 1
syscall
	   
add $4, $0, $17
addi $2, $0, 1
syscall
	   
add $4, $0, $16
addi $2, $0, 1
syscall
	   
add $4, $0, $15
addi $2, $0, 1
syscall
	   
add $4, $0, $14
addi $2, $0, 1
syscall
	   
add $4, $0, $13
addi $2, $0, 1
syscall
	   
add $4, $0, $12
addi $2, $0, 1
syscall
	   
add $4, $0, $11
addi $2, $0, 1
syscall
	   
add $4, $0, $10
addi $2, $0, 1
syscall

add $4, $0, $9
addi $2, $0, 1
syscall
	 	 
fim:
addi $2, $0, 10
syscall