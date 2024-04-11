#!/bin/bash

cd ~/curso-shell-script/script-logs
regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]; then
	cat apache.log | grep $1
	if [ $? -ne 0 ]; then
		echo "Endereço não encontrado no arquivo"
	fi
else
	echo "formato inválido"
fi
