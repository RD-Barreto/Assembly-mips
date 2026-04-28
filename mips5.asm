.data
c1: .asciiz "Cateto I: "
c2: .asciiz "Cateto II: "
h: .asciiz "Hipotenuza : "

.text
.main

li $v0, 4
la $a0, c1
syscall
li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, c2
syscall
li $v0, 5
syscall
move $t1, $v0

mul $t0, $t0, $t0
mul $t1, $t1, $t1
add $t2, $t0, $t1

li $v0, 4
la $a0, h
syscall
li $v0,1
move $a0, $t2
syscall

li $v0, 10
syscall
