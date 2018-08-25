#!/bin/bash
echo "Realizando teste de conectividade..."
ping -qc5 $URL > /dev/null

echo

if [ $? -eq 0 ]; then
	echo "A instancia $URL esta online"
else 
	echo "A instancia $URL esta offline"
  	echo "TEST_FAIL"
  exit
fi

echo "Test HTTP GET /..."
curl --head $URL_APP
