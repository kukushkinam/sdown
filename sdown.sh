#!/bin/bash

#���������� ������ ���������� ������� �� ssh

#���������
#-a ����� ���������� ��������� ����

#��������� �����������
#������� ����� ssh 
#ssh keygen
#��������� �������� ���� �� ����������� ������
#ssh-copy-id username@ip
#�������� username@ip � ���������� servers

#������ �������� username@ip
servers=(
"vagrant@192.168.0.27"
"vagrant@192.168.0.65"
)
#������� ���������� ������
comand="sudo shutdown -P now"

for server in ${servers[*]} 
  do
    echo "ssh $server $comand"
    ssh $server $comand
  done

#�������� ������� ��������� ��� ���������� �����
if [ "$1" = "-a" ] 
  then
    echo $comand
    $comand
fi