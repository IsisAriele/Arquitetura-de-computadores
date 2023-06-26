# Fa�a um programa que leia um vetor de 10 posi��es e 
# verifique se existem valores repetidos e os escreva na tela.

.text
main:
addi $8, $0, 0 #i do for
addi $9, $0, 10 #Verifica��o no for (i < 10)
lui $25, 0x1001

for0:
beq $8, $9, continua #Verifica para sair do for
addi $2, $0, 5 #l� n�mero
syscall
sw $2, 0($25) #Armazenando n�mero lido em um endere�o de mem�ria
addi $25, $25, 4 #Somando para apontar para o pr�ximo endere�o de mem�ria
addi $8, $8, 1 #incrementa i
j for0

continua:
#Reiniciando as vari�veis para a verifica��o dos repetidos
addi $8, $0, 0
addi $9, $0, 10
addi $15, $0, 0 #Inicializando contador de endere�o de mem�ria
lui $25, 0x1001

addi $10, $0, 0 #Contador de n�meros que j� foram

#For para verifica��o se existem repetidos
lw $11, 0($26) #carregando um n�mero no $11
addi $25, $25, 4

for1:
beq $8, $9, nextnumber #contador para verificar um n�mero com o proximo
beq $10, $9, fim #se $10 = 10, todos os n�meros foram verificados 
lw $12, 0($25) #carregando o n�mero seguinte ao $12
beq $11, $12, iguais
addi $25, $25, 4

iguais:
add $4, $0, $11 #adicionando para impress�o
addi $2, $0, 1
syscall

addi $4, $0, ' '
addi $2, $0, 11
syscall

j nextnumber

nextnumber:
addi $26, $26, 4
addi $15, $15, 4 #aumentando para n�o verificar o mesmo numero
lw $11, 0($26) #carregando um n�mero no $11
addi $8, $0, 0

lui $25, 0x1001 #reiniciando o endere�o de memoria
addi $25, $25, 4 #adiciona 4 para n�o verificar o mesmo numero duas vezes
add $25, $25, $15 #adicionando o contador de verifica��es para n�o verificar o mesmo numero duas vezes
addi $10, $10, 1

j for1

fim:
addi $2, $0, 10
syscall