#!/bin/bash

#quinto.sh - Nosso quinto programa em shell - condicional case
#
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa irá iniciar um serviço chamado Stronger. Irá capturar o primeiro parametro passado depois do programa e irá armazenar na variável $1, caso o valor seja start, executa o trecho de comandos do start, caso seja stop, executará o trecho do comando stop, caso seja status, executar o trecho do status e caso não seja  
#
#Exemplo de execução:
#
#$ ./quinto.sh start
#bem vindo ao programa Stronger
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
#Versão 1.0

PID="/tmp/stronger.pid"
echo 
echo "Bem vindo ao programa Stronger"
echo
case $1 in
	start)
		echo
		echo "Iniciando o programa Stronger!"
		echo "..."
		sleep 2s
		echo ".........."
		sleep 2s
		echo ".................."
		sleep 2s
		echo "............................." 
		sleep 2s
		echo "...................................."
		touch $PID
		echo "Programa Stronger iniciado com sucesso!"
		;;	
	stop)
		echo
		echo "Parando o programa Stronger!"
		echo "..."
		sleep 2s
		echo ".........."
		sleep 2s
		echo ".................."
		sleep 2s
		echo "............................." 
		sleep 2s
		echo "...................................."
		rm $PID
		echo "Programa Stronger parado com sucesso!"
		;;	
	status)
		echo
		echo "Verificando o status do programa Stronger!"
		echo
		if [ -f $PID ]; then
			echo "O programa Stronger está em execução"
		else
			echo "O programa Stronger está parado"

		fi
		;;
	*)
		echo "Por favor, digite ./quinto start | stop | status"
		;;
esac

exit 0
