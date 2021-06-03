#!/bin/bash

#quarto.sh - Nosso quarto programa em shell
#
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa iŕ mostrar o funcionamento da condição if, then, else.
# O programa irá verificar se um valor digitado como primeiro parametro digitado na variável $DIGITADO, irá
#comparar com o valor da variável SEGREDO. Se os valores forem iguais, irá mostrar que foi revelado o segredo na tela,
#se não for igual, irá mostrar um erro.
#
#Exemplo de execução:
#
#$ ./quarto.sh Utah
#Meus parabéns, você acerotu o segredo. Você está na melhor em Linux do Brasil!
#$./quarto.sh blue
#VOCÊ ERROU! Está perdendo seu tempo na blue
#
#
#
#Histórico de versões 
#
#Versão 1.0

SEGREDO="utah"

echo 
echo "Bem vindo ao detector de segredos!"
echo
echo "Por gentileza, digite o segredo: "
# o read irá ler o que o usuário irá digitar e armazenará na variável DIGITADOO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus parabéns, você está na melhor em Linux do Brasil!!"
	echo
else
	echo "VOCÊ ERROU! Está perdendo seu tempo na $DIGITADO"
	echo
fi

