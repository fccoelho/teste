#!/bin/bash

x=$(sed "s/BRA/BR/g" $1 | grep -c "BR");

echo "O arquivo $1 contém $x linhas com a sigla BRA";

echo "Os seguintes indicadores estão disponíveis";

echo $(grep BRA dados.csv |cut -d, -s -f1,4,5 )
