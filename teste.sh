#!/bin/bash
echo "Realizando teste de conectividade..."
#Verifica se a instacia esta UP utilizando o protocolo ICMP
ping -qc5 $URL > /dev/null

echo

if [ $? -eq 0 ]; then
	echo -e "$URL: Status -> \033[0;32mONLINE\033[0m"
else 
	echo -e "$URL: Status -> \033[0;31mOFFLINE\033[0m"
	echo "ERROR..."
  exit
fi

echo "Teste de requisição"
#Envia uma requisição HTTP GET para o APP

STATUS_CODE=$(curl --head $URL | grep -i "HTTP/" | cut -d" " -f2)
#clear

#Verifica se a resposta do HTTP GET é igual a 200, caso verdadeiro a requisiço foi um sucesso.
if [ $STATUS_CODE -eq 200 ]; then
	echo -e "Teste de requisição....\033[0;32mOK\033[0m"
else
	echo "Teste de requisição... \033[0;31mFAIL\033[0m"
fi
