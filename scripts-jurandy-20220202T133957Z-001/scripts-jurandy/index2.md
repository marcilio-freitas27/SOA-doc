# Semana 07

- Data: 22/dez/2021

## Caminhos

- Absoluto:
  
  Começa da raiz "/" (barra"), que representa o início do sistema de arquivos onde está instalado o Linux. No Windows, seria o correspondente ao "C:\".

  Exemplo:
  - `/etc`
  - `/var/log/auth.log`
  - `/usr/local/bin`
  - `/usr/local/sbin`

- Relativo
  
  Relacionado ao diretório atual, ao diretório do próprio usuário ou de um usuário qualquer.

  - `./`: Diretório atual
  - `../`: Diretório "pai"
  - `../../`: Diretório avô
  - `~/Downloads/anotacoes.txt`: Arquivo *anotacoes.txt* na pasta *Downloads* do diretório `home` do usuário que executou o comando.
  - `~fulano/Downloads/anotacoes.txt`: Arquivo *anotacoes.txt* na pasta *Downloads* do diretório `home` do usuário *fulano*.
  - `/home/tsi2/.config/code-server/config.yaml`: Caminho do arquivo de configuração do *code-server*.
  
  ## Arquivos e diretórios ocultos

  Começam com `.` (ponto).

  Servem para guardar configurações na pasta `home` do usuário e são, por padrão, escondidos para evitar remoção acidental.

  Exemplo de comando: `tree -d -a ~`

  Saída do comando:
```

```

## Criação dos próprios comandos

Comando para entrar no diretório `~/.local`: `cd ~/.local`

Vamos criar o diretório `~/.local/bin`: `mkdir ~/.local/bin`

Para criar comandos que serão executados somente pelo usuário atual, basta criar scripts dentro deste diretório.

Criação de 5 comandos fúteis:
- `touch ~/.local/bin/bl{a,e,i,o,u}`

Podemos executar os comandos recém criados, basta chamar:
- `bla`
- `ble`
- `bli`
- `blo`
- `blu`

Para permitir executá-los, devemos atribuir permissão de execução para ele:
- `chmod +x ~/.local/bin/bl{a,e,i,o,u}`

## Regras para comandos do UNIX (Avô do Linux)

- Os nomes dos comandos devem ter entre 2 e 9 caracteres de comprimento
- Os nomes dos comandos devem ser compostos por caracteres minúsculos e dígitos
- Os nomes das opções devem ter um caractere de comprimento
- Todas as opções são precedidas por um hífen (`-`)
- Opções sem argumentos podem ser agrupadas após o hífen (Ex.: `ls -lia`; `ls -ila`; `ls -lai`)
- O primeiro argumento de opção, após uma opção, deve ser precedido por um espaço em branco. Por exemplo, -o sfile é válido, mas -osfile é ilegal. 
  Ex.: 
  ```
  git commit -m "Mensagem"
  \_/ \____/ \/ \________/
   1     2    3     4

  # Há um espaço entre a opção (3) e o argumento dela (4)
  ```
- Os argumentos da opção não são opcionais (Quando uma opção necessitar de argumento, ele é obrigatório)

  Se uma opção tiver mais de um argumento, eles devem ser separados por vírgulas, sem espaços, ou se espaços forem usados, a cadeia de caracteres (string) deve ser incluída entre aspas duplas ("). Por exemplo, ambos os seguintes são aceitáveis:

  - `-f past,now,next` e
  - `-f "past now next"`

  Ex.:
  - `sudo useradd -c "Marcilio de Oliveira Freitas" -m -s "/bin/bash" marcilio`
  - `sudo usermod -a -G dip,plugdev,lpadmin marcilio`

$ groups
jurandy adm dialout cdrom sudo dip plugdev lpadmin lxd sambashare wireshark
$ sudo usermod -a -G dip,plugdev,lpadmin marcilio
$ groups marcilio
marcilio : marcilio dip plugdev lpadmin
$ sudo usermod -a -G "lxd sambashare wireshark" marcilio
O último comando não funcionou porque a opção `-G` do comando `usermod` só aceita argumentos separados por vírgula (Ver: `man usermod`).

- Todas as opções devem preceder outros argumentos na linha de comando
- Um hífen duplo (`--`) pode ser usado para indicar o fim da lista de opções
- A ordem das opções é independente da ordem. Ex.: `ls -lia`; `ls -ail`; `ls -lai`
- A ordem dos argumentos **pode** ser importante. Ex.: `cp ORIG DEST`; `mv ORIG DEST`
- Um único hífen (`-`) é usado para significar entrada padrão