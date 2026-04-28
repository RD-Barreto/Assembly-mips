.data
h: .asciiz " Hora Trabalhada $10: "
hx: .asciiz "Hora Extra $15: "
sb: .asciiz "Salario Base:  "
sf: .asciiz "Salario Final: "
d: .asciiz " \nDigite valor de Desconto: "

.text
.main

li $v0,4
la $a0, h
syscall
li $v0, 5
syscall
move $t0, $v0
li $t5, 10
mul $t0, $t0, $t5

li $v0, 4
la $a0, hx
syscall
li $v0,5
syscall
move $t1, $v0
li $t6, 15
mul $t1, $t1, $t6

add $t2,$t0,$t1

li $v0, 4
la $a0, sb
syscall
li $v0, 1
move $a0, $t2
syscall

li $v0, 4 
la $a0, d
syscall
li $v0, 5
syscall
move $t4, $v0

sub $t3, $t2, $t4

li $v0, 4
la $a0, sf
syscall
li $v0,1
move $a0, $t3
syscall
li $v0, 10
syscall