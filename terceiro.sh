#!/bin/bash

#terceiro.sh - Nosso terceiro programa em shell
#
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa iŕ mostrar o funcionamento da condição if, then, else.
# O programa irá verificar se um valor digitado como primeiro parametro digitado, irá armazenar na variável $1 e irá
#comparar com o valor da variável SEGREDO. Se os valores forem iguais, irá mostrar que foi revelado o segredo na tela,
#se não for igual, irá mostrar um erro.
#
#Exemplo de execução:
#
#$ ./terceiro.sh
#Meus parabéns, você acerotu o segredo. Você está na melhor em Linux do Brasil!
#$./terceiro.sh
#VOCÊ ERROU! Está perdendo seu tempo na $1
#
#
#
#Histórico de versões 
#
#Versão 1.0

SEGREDO="Utah"

echo 
echo "Bem vindo ao detector de segredos!"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus parabéns, você está na melhor em Linux do Brasil!!"
	echo
else
	echo "VOCÊ ERROU! Está perdendo seu tempo na $1"
	echo
fi

