Autor: Marcos Antunes
RM: 84434
Turma: 2TRCR-2021

Exercicio 1

Nome do script: Script_backup.sh
Permissão: 755

A estrutura das pastas é a seguinte
/srv/samba/{departamental, publico, marcos}
/srv/backup/ >> Onde os arquivos de backup tar.gz são salvos
/srv/ onde o script está sendo executado e gravado as logs no arquivo logbkp.log
Sendo enviado email para o sysadmin atraves de ssmtp

Exercicio 2

Nome do script: Butter_Robot.sh
Permissão: 755

A primeira pergunta "Olá seja educado me deseje: Bom dia, boa tarde ou boa noite" deve ser respondida apenas com:
Bom dia
bom dia
Boa tarde
boa tarde
Boa noite
boa noite
Caso o contrario a resposta será a seguinte "Qual o seu proposito? Só são 2 palavras, vamos lá seja educado" e o script será encerrado

A pergunta "Agora me diga o que você deseja?" pode ser respondida das seguintes manairas apenas(a primeira letra pode ser maiuscula e minuscula):
Namorar
Atualização
Instalar / Instale / Instalação (Nesse caso ele perguntarar qual o programa a ser instalado)
Qual a minha rota
Qual o meu IP
Como é você por dentro
Sair (Para encerrar a execução do robô)
Para todas as opções após a execução ele voltarar a fazer a pergunta "Agora me diga o que você deseja?"
Caso sejá uma opção invalida a resposta será "Eu não quero fazer isso, tenta de novo!"
