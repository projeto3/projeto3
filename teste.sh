#!/bin/bash
echo "Realizando teste de conectividade"
ping -qc5 $IP > /dev/null

echo

if [ $? -eq 0 ]; then
	echo "A instancia $IP esta online"
else 
	echo "A instancia $IP esta offline"
  echo "TEST_FAIL"
  exit
fi

echo "Realizando teste de requisição de conteudo..."
curl $IP_APP:$PORTA
