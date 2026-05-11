.data
    n: .asciiz "Digite um numero (1 < n < 10000): "
    r: .asciiz ", " 

.text
main: 
    input_loop:
    li $v0, 4
    la $a0, n
    syscall
    
    li $v0, 5
    syscall
    move $s0, $v0       
    

    sle $t0, $s0, 1
    sge $t1, $s0, 10000
    or $t0, $t0, $t1
    beq $t0, 1, input_loop
    
    li $s1, 2           
    
loop_principal:
    bgt $s1, $s0, fim 
    
    li $s2, 2           
    li $t2, 1           
    
loop_divisor:
    mul $t3, $s2, $s2
    bgt $t3, $s1, mostra_ok
    
    rem $t4, $s1, $s2
    beq $t4, $zero, nao_primo
    
    addi $s2, $s2, 1
    j loop_divisor
    
nao_primo:
    li $t2, 0         

    j mostra_ok
    
mostra_ok:
    beq $t2, $zero, proximo_i 
    

    move $a0, $s1
    li $v0, 1
    syscall
    

    li $v0, 4
    la $a0, r
    syscall
        
proximo_i:
    addi $s1, $s1, 1     
    j loop_principal
    
fim:
    li $v0, 10
    syscall