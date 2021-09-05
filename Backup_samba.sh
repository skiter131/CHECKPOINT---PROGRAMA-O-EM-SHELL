#!/bin/bash
#
#################################################################################
#  Comentarios do Script: Esse script tem como objetivo realizar o backup da  
#  infraestrutura do diretorio /srv/samba/{departamental, publico, marcos}
#################################################################################
#
#                  Nome: Backup_samba.sh
#
#  Autor: Marcos Antunes
#
#  RM: 84434
#
#  Turma: 2TRCR-2021
#
#
#
#################################################################################

DIR_SAMBA="/srv/samba/"
DIR_BKP="/srv/backup/"
NOME_BKP="bkp_samba_$(date +%d%m%y).tar.gz"
BKP_ANT="bkp_samba_$(date +%d%m%y --date="-5 days").tar.gz"
VALIDA_BKP="Erro ao gerar validação do backup"
VALIDA_OLD="Erro ao gerar validação da exclusão do backup antigo"


function validacao {
    if [ -e "${DIR_BKP}${NOME_BKP}" ] ; then
        VALIDA_BKP="Backup realizado com exito"
        echo "$(date)----- $VALIDA_BKP" >> logbkp.log
        mail -s "Backup Realizado com Sucesso" -a logbkp.log sysadmin@teste.com
    else
        VALIDA_BKP="Falha ao gerar arquivo de backup"
        echo "$(date)----- $VALIDA_BKP" >> logbkp.log
        mail -s " Backup com Erro" -a logbkp.log sysadmin@teste.com
    fi

    if [ ! -e "${DIR_BKP}${BKP_ANT}" ] ; then
        VALIDA_OLD="Excluido arquivo de backup com mais de 5 dias"
        echo "$(date)----- $VALIDA_OLD" >> logbkp.log
    else
        VALIDA_OLD="Falha ao excluir arquivo de backup com mais de 5 dias"
        echo "$(date)----- $VALIDA_OLD" >> logbkp.log
    fi
}

if [ -e "${DIR_BKP}${NOME_BKP}" ] ; then
    echo "Arquivo duplicado" >> logbkp.log
    validacao
else
    if [ -e "${DIR_BKP}${BKP_ANT}" ] ; then
        rm -rf ${DIR_BKP}${BKP_ANT} >> logbkp.log
    fi
    tar -cvzf ${DIR_BKP}${NOME_BKP} ${DIR_SAMBA} >> logbkp.log
    validacao
fi 

echo "*********************************************************************************"
echo "*"
echo "*                  Execução do programa finalizada"
echo "*"
echo "*  ${VALIDA_BKP}"
echo "*"
echo "*  ${VALIDA_OLD}"
echo "*"
echo "*"
echo "*********************************************************************************"
