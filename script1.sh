#!/bin/bash


## script01.sh Emulação do comando 



o=+
# Declara o valor da variável o sendo soma
a=1 
# Declara a variável A igual a 1
z=$1{1:-1}
# Caso o parametro não seja declarado, a variável z terá o mesmo valor do parâmetro informado ($1);
[ "$2" ] && { 
	a=$1
       	z=$2
}	
# Se o segundo paramenro for informado, $2, a variável a receberá o primeiro parametro $1 e a variável z o segundo paramentro.

[ $a -gt $z ] && o=-
#Se o valor da variável a for maior que o valor da variável z a variável O será declarada como sinal de - (subtração)

while [ $a -ne $z ]; do
       	echo $a
       	eval "a=\$((a$o 1))"
done

echo $a
