.text
main: 
addi $2, $0, 5
syscall
add $8, $2, $0 #L� primeiro n�mero do intervalo
     
addi $2, $0, 5
syscall
addi $9, $2, 1 #L� segundo n�mero do intervalo + 1
     
for:  
beq $8, $9, fim #O loop termina quando $8 for igual a $9, s� o $8 ser� incrementado, passando por todos os valores do intervalo
andi $10, $8, 1 #Se $10 tiver 0, signfica que o $8 � par (opera��o and com 1)
bne $10, $0, passa #Sendo impar vai para 'passa'
add $4, $0, $8 #Segue para impress�o
addi $2, $0, 1
syscall
addi $4, $0, '\n'
addi $2, $0, 11
syscall

passa:      
addi $8, $8, 1 #incrementa 1 e volta pro loop
j for    
    
fim:  
addi $2, $0, 10
syscall