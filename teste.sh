#!/bin/bash
echo "Realizando teste de conectividade..."
#Verifica se a instancia AWS está UP
URL="http://www.google.com"

#Falta - Verificar como pega a URL da instancia via terraform e salvar em variavel...
ping -qc5 $URL > /dev/null

echo

if [ $? -eq 0 ]; then
	echo -e "$URL: Status -> \033[0;32mONLINE\033[0m"
else 
	echo -e "$URL: Status -> \033[0;31mOFFLINE\033[0m"
	echo "O teste de conectividade falhou, verifique sua instancia AWS!"
	exit
fi

echo "Realizando teste de requisição (HTTP GET)"
sleep 1
#Envia uma requisição HTTP GET para o APP

STATUS_CODE=$(curl --write-out %{http_code} --silent --output /dev/null $URL)

#Verifica se a resposta do HTTP GET é igual a 200, caso verdadeiro a requisiço foi um sucesso.
if [ $STATUS_CODE -eq 200 ]; then
	echo -e "Teste de requisição....\033[0;32mOK\033[0m :: $(date +%F\ %T)"
	echo "URL da aplicação $URL"
else
	echo -e "Teste de requisição... \033[0;31mFAIL\033[0m :: $(date +%F\ %T)"
	echo "Teste de requisição falhou, verifique o log de deploy da aplicação!"
fi
