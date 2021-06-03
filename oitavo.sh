#!/bin/bash

#oitavo.sh - Nosso oitavo programa em shell - Laço de repetição For
#
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa irá verificar uma mensagem na tela para cada arquivo .conf encontrado NO DIRETÓRIO /etc.  
#
#Exemplo de execução:
#
#$ ./sexto.sh
#O valor da variável não é 0, que é menor que 10.
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

ARQUIVOS="/etc/*.conf"
echo
echo "Bem vindo ao programa de listagem de arquivos"
echo

for i in $(ls $ARQUIVOS); do 
	echo "O arquivo $i foi encontrado no diretório /etc/."
done

exit 0
 
