#!/bin/bash

#decimo.sh - Nosso decimo programa em shell -Script de backup completo
#Homepage: https://teste.teste.com.br
#Autor: Maxwell Santos <maxwellotavio@msn.com>
#Mantenedor: Grupo Utah <teste@teste.com.br>
#
#****************************************************
#
# Este programa será realizado um backup de arquivos FULL de arquivos localizados em um servidor onde teremos que copair a pasta /srv/samba
#
#Exemplo de execução:
#
#$ ./decimo.sh

#Local de armazenamento dos backups
DESTINOBKP="/srv/backup/"

#Local dos arquivos de origem de onde serão feitos os backups
FILESDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
DATE=$(date +%d_%m_%Y)
FILENAME="backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf /srv/$FILENAME $DESTINOBKP"
ADMIN="maxwellotavio@gmail.com"
echo -e "\n"
echo "Iniciando o script de backup..."
echo -e "\n"

verificador(){
if [ $? -eq 0 ]; then
	echo "Comando executado com sucesso!"
else
	echo "Processo executado com erro."
	mail_err
	exit 1
fi
}

mail(){
sendEmail -f root@srvsantos.local -t $ADMIN -u "Mensagem de backup" -a $LOGFILE
}

mail_err(){
sendEmail -f root@srvsantos.local -t $ADMIN -u "Mensagem de backup" -a $ERRORLOG
}






rsync -avu $FILESDIR $DESTINOBKP > $LOGFILE 2>$ERRORLOG
verificador
mail
[ -f "$COMPACT" ] || $COMPACT
verificador





exit 0
