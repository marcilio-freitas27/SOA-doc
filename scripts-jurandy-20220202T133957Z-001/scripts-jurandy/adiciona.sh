#!/bin/bash

# imrprimi o nome do script
echo $0

# variavel recebe 10
soma=10

for elemento in $*; do
    let soma=$soma+${elemento}
done

echo ${soma}