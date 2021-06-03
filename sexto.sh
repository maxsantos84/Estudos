#!/bin/bash

#sexto.sh - Nosso sexto programa em shell - Laço de repetição While
#
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa irá verificar o valor da variável NUMERO. Enquanto o valor da cariável for menor que 10, ele irá mostrar a mensagem na tela que o valor é menor que 10 e irá mostrar o valor da variavel. quando o valor atingir 10, o programa será finalizado.  
#
#Exemplo de execução:
#
#$ ./sexto.sh
#O valor da variável é0, que é menor que 10.
#O valor da variável é 1 que é menor que 10.
#$./quinto.sh
#...
#........
#...............
#
#
#echo "Bem vindo ao programa Stronger"
#
#Histórico de versões
#
#
#Versão 1.0

NUMERO="0"
echo
echo "Bem vindo ao programa de numeros"
echo

while [ $NUMERO -lt "10" ]; do
	 echo "O valor da variável é: $NUMERO"
	 echo "$NUMERO é menor que 10"
	 let NUMERO=$NUMERO+1
done	

 
