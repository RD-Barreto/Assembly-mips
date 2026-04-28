.data
b1: .asciiz "Digite Base Maior: "
b2: .asciiz "Digite Base Menor: "
l: .asciiz "Digite Altura: "
a: .asciiz "Area Total: "

.text
.main

li $v0, 4
La $a0, b1
syscall
li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, b2
syscall
li $v0, 5
syscall
move $t1, $v0

li $v0,4
la $a0, l
syscall
li $v0, 5
syscall
move $t2, $v0

add $t3, $t0, $t1
mul $t4, $t3, $t2
div $t4, $t4,2

li $v0, 4
la $a0, a
syscall
li $v0, 1
move $a0, $t4
syscall
li $v0, 10
syscall