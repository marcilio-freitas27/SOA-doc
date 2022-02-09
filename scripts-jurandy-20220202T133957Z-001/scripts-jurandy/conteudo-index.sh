#!/bin/bash

# for NOME [in PALAVRAS ...] ; do COMANDOS; done

for d in {01..20}
  do
    echo "# Semana ${d}" > semanas/${d}/index.md
  done