#!/bin/bash

#завершение работы удаленного сервера по ssh

#ПАРАМЕТРЫ
#-a (all) после выполнения выключает хост

#НАСТРОЙКА ПОДКЛЮЧЕНИЯ
#создать ключи ssh 
#ssh keygen
#отправить открытый ключ на управляемую машину
#ssh-copy-id username@ip
#добавить username@ip в переменную servers

#список серверов username@ip
servers=(
"vagrant@192.168.0.27"
"vagrant@192.168.0.65"
)
#команда завершения работы
comand="sudo shutdown -P now"

for server in ${servers[*]} 
  do
    echo "ssh $server $comand"
    ssh $server $comand
  done

#проверим наличие параметра для выключения хоста
if [ "$1" = "-a" ] 
  then
    echo $comand
    $comand
fi
