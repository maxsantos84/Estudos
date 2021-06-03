#!/bin/bash

#decimo.sh - Nosso decimo programa em shell - Laço de repetição For
#
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa é um robo interativo, estilo alexa, chamado Mr. Robot. Criado para invadir determinadas URLs, buscar vulnerabilidades e também verificar conectividades.  
#
#Exemplo de execução:
#
#$ ./mrrobot.sh

source /root/ShelltoHell/instructions.txt
echo -e "\e[31m\e[1m\e[5mOlá, eu sou o Mr. Robot. Fui criado para atacar! Não sou seu amigo, mas diga: \nO que você quer que eu faça???\e[m\e[m\e[m"

sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga agora!" ACTION
	echo -e "\n"


	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade")
			DADO="$(( $RANDOM % 10 ))"
			ping -c 4 -4 "${sites[$DADO]}"
			
			;;
		*"nmap"*|*"mapear"*|*"portas"*)
			DADO="$(( $RANDOM % 10 ))"
			nmap -sS "${sites[$DADO]}"
			
			;;
		*"connect"*|*"mapeando"*|*"acesse"*|*"ssh"*)
			DADO="$(( $RANDOM % 4 ))"
			ssh -l root "${openssh[$DADO]}"
			;;

	esac
done

