#!/bin/bash
#
#################################################################################
#  Comentarios do Script: Esse script tem como objetivo ser um robô interativo 
#  com base no Butter Robot do Rick and Morty, realizar update/upgrades do 
#  sistema e executar 3 comandos: traceroute google.com; ip a; cat butter_Robot.sh
#################################################################################
#
#                  Nome: Butter_Robot.sh
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

function ola {
    echo "Olá seja educado me deseje: Bom dia, boa tarde ou boa noite:"
    read R_OLA

    if [ "${R_OLA}" = "bom dia" ] || [ "${R_OLA}" = "Bom dia" ] ; then
        OPS="$(( ( RANDOM % 10 )  + 1 ))"
        R_OLA="Bom Dia!"
    elif [ "${R_OLA}" = "boa tarde" ] || [ "${R_OLA}" = "Boa tarde" ] ; then
        OPS="$(( ( RANDOM % 10 )  + 1 ))"
        R_OLA="Boa Tarde!"
    elif [ "${R_OLA}" = "boa noite" ] || [ "${R_OLA}" = "Boa noite" ] ; then
        OPS="$(( ( RANDOM % 10 )  + 1 ))"
        R_OLA="Boa Noite!"
    else
        echo "Qual o seu proposito? Só são 2 palavras, vamos lá seja educado"
        exit
    fi

    case $OPS in
        1)
            echo "$R_OLA Qual é o meu proprosito?"
            morty
            ;;
        2)
            echo "$R_OLA Não me pergunte se eu quero namorar! ¬¬'"
            morty
            ;;
        3)
            echo "$R_OLA Espero que vc esteja bem! Não me peça a manteiga"
            morty
            ;;
        4)
            echo "$R_OLA Oh meu Deus! meu proposito não é só buscar a manteiga!?"
            morty
            ;;
        5)
            echo "$R_OLA Eu não mentiria para você. Bem... Isso é uma mentira"
            morty
            ;;
        6)
            echo "$R_OLA É isso mesmo, malandro. É o prestígio! Você se prestigiou"
            morty
            ;;
        7)
            echo "$R_OLA Tem uma lição aqui, mas não sou eu quem vai entender"
            morty
            ;;
        8)
            echo "$R_OLA Eu não discuto problemas, eu coloco fogo neles"
            morty
            ;;
        9)
            echo "$R_OLA É isso: eu não sou um homem. Eu sou Deus. Você foi feito à minha imagem"
            morty
            ;;
        10)
            echo "$R_OLA O que acontece se eu não pegar a manteiga?! Bom, deixa pra lá..."
            morty
            ;;
        *)
            echo "Algo de erro não está certo! Desculpe falhar no meu proprosito :("
            break
            ;;
    esac
}

function morty {
    echo "Agora me diga o que você deseja?"
    read DESEJO

    if [ "${DESEJO}" = "Namorar" ] || [ "${DESEJO}" = "namorar" ] ; then
        echo "Eu sou um robô, não fazemos essas coisas..."
        morty
    elif [ "${DESEJO}" = "Atualização" ] || [ "${DESEJO}" = "atualização" ] ; then
        echo "OK, vamos atualizar as coisas aqui!"
        apt update && apt upgrade
        echo "Ta feito meu chapa!"
        morty
    elif [ "${DESEJO}" = "Instalar" ] || [ "${DESEJO}" = "instalar" ] || [ "${DESEJO}" = "instale" ] || [ "${DESEJO}" = "Instale" ] || [ "${DESEJO}" = "instalação" ] || [ "${DESEJO}" = "Instalação" ] ; then
        echo "Qual o programa"
        read PROGRAMA
        apt install ${PROGRAMA} -y 
        echo "Ta feito meu chapa!"
        morty
    elif [ "${DESEJO}" = "Qual a minha rota" ] || [ "${DESEJO}" = "qual a minha rota" ] ; then
        traceroute google.com
        morty
    elif [ "${DESEJO}" = "Qual o meu IP" ] || [ "${DESEJO}" = "qual o meu IP" ] || [ "${DESEJO}" = "qual o meu ip" ] || [ "${DESEJO}" = "Qual o meu ip" ] ; then
        ip a
        morty
    elif [ "${DESEJO}" = "Como é você por dentro" ] || [ "${DESEJO}" = "Como é você por dentro" ] ; then
        cat butter_Robot.sh
        morty
    elif [ "${DESEJO}" = "Sair" ] || [ "${DESEJO}" = "sair" ] ; then
        echo "Blz, eu não posso sair com vc, mas vai lá! Flw"
        exit
    else
        echo "Eu não quero fazer isso, tenta de novo!"
        morty
    fi
}

ola
