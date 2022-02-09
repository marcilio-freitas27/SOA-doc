#!/usr/bin/bash
#criar constante o ano atual
ANO=$(date +%Y)
# criar pastas e subpastas no formato ano/meses/dias
mkdir -p ${ANO}/{01..12}/{01..31}
# excluir os as pastas com dia 31 em meses que só tem 30 dias
rmdir ${ANO}/{04,07,09,11}/31
# excluir as pastas 29,30 e 31 em meses que só tem 28 dias
rmdir ${ANO}/02/{29,30,31}

# criando array
declare -A nome_mes

nome_mes[01]=Janeiro
nome_mes[02]=Fevereiro
nome_mes[03]=Marco
nome_mes[04]=Abril
nome_mes[05]=Maio
nome_mes[06]=Junho
nome_mes[07]=Julho
nome_mes[08]=Agosto
nome_mes[09]=Setembro
nome_mes[10]=Outubro
nome_mes[11]=Novembro
nome_mes[12]=Dezembro

for i in {01..12}
    do
        #inserindo nome do mes no index de cada ano e mes
        echo "# ${nome_mes[$i]}" >> ${ANO}/${i}/index.md;
    done

    