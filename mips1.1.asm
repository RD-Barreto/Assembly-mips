.data
    prompt_base:   .asciiz "Digite a base: "
    prompt_altura: .asciiz "Digite a altura: "
    resultado:     .asciiz "Area: "
    
.text
.globl main

main:
    # 1. Solicitar e ler a base
    li $v0, 4           # syscall 4: print string
    la $a0, prompt_base # carrega endereco da string
    syscall
    
    li $v0, 5           # syscall 5: read integer
    syscall
    move $t1, $v0       # move a base para $t1
    
    # 2. Solicitar e ler a altura
    li $v0, 4
    la $a0, prompt_altura
    syscall
    
    li $v0, 5
    syscall
    move $t2, $v0       # move a altura para $t2
    
    # 3. Calcular a area: (base * altura) / 2
    mul $t3, $t1, $t2   # $t3 = base * altura
    div $t3, $t3, 2     # $t3 = $t3 / 2
    
    # 4. Imprimir o resultado
    li $v0, 4
    la $a0, resultado
    syscall
    
    li $v0, 1           # syscall 1: print integer
    move $a0, $t3       # move o resultado para $a0 para imprimir
    syscall
    
    # 5. Sair do programa
    li $v0, 10          # syscall 10: exit
    syscall
