.data
base:  .asciiz "digite base: "
altura: .asciiz "digite altura: "
area: .asciiz "resultado: "

.text 
.main
 li $v0,4 
 la $a0, base
 syscall
 li $v0, 5
 syscall
 mov $t1, $v0
 li $v0, 4 
 la $a0, altura
 syscall
 li $v0, 5
 syscall
 mov $t2, $a0
 mul $t3, $t1, $t2
 li $v0, 4
 la $a0, area
 syscall
 li $v0, 1
 mov $a0, $t2
 syscall
 li $v0, 10
 syscall
