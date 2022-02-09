#!/bin/bash

echo $0

soma=0

for elemento in $*; do
    let soma=$soma+${elemento}
done

echo ${soma}