#!/bin/bash

#segundo.sh - Nosso segundo programa em shell
#
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa iŕa as principais variáveis de controle internas do shell, que poderão
#ser usadas por outros programas a fim fr obtermos alguma informação.
#
#Exemplo de execução:
#
#$ ./segundo.sh linux
#O Valor da variável $1 é linux
#$ ./segundo.sh linux windows
#O Valor da variável $1 é linux
#O Valor da variáve $2 é Windows
#Histórico de versões 
#
#Versão 1.0

echo "Bem vindo a varíaveis de controle do Shell"
echo
echo "A variável \$1 armazena o primeiro parametro passado depois do script, que foi $1"
echo
echo "A variável \$2 armazena o segundo parametro passado depois do script, que foi $2"
echo
echo "A variável \$3 armazena o terceiro parametro passado depois do script, que foi $3"
echo
echo "A variável \$0 armazena o comando que foi executado,nome do programa que foi $0"
echo
echo "A variável \$# armazena o numero de parametros que foram passados,que foram $#"
echo
echo "A variável \$\$ ou \$@  armazena o numero do PID do processo gerado na execução do programa, que foi $$"
echo
echo "A variável \$? armazena o valor de retorno do ultimo comando/programa executado que foi $?"
echo


