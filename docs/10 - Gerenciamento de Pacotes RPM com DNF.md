# 10-Gerenciamento de Pacotes RPM com DNF
## RPM

- Distribuição Linux - Centos 
- RedHat Package Manager
- IBM
- Semelhante ao DPKG do Debian
- Debian - comunidade que criou a distribuição
- Instalador `rpm`
- Extensão `rpm`
- Comandos diretos aqui não são seguros
- informações sobre o pacote - `rpm -qi nome do pacote`
- instalar pacote - `rpm -i nome do pacote`
- listar informações - `rpm`
- consultas a todos os pacotes - `rpm -qa google `
## historia

- Tarball - Precisava baixar arquivos tar;
- Com os pacotes isso melhorou muito

## DNF

- Gerenciador de pacotes e gerencia as dependencias(Como o apt)
- versão - `dnf --version`
- listar respositórios instalados - `dnf repolist`
- instalar um pacote  -  `dnf install epel`
- instalar um pacote  -  `dnf install etckeeper etckeeper-dnf`
- instalar um pacote  -  `dnf install micro`
- listar os pacotes  - `dnf list epel*`
- pesquisa - `dnf search etckeeper`
- quem oferece o pacote - `dnf provides /usr/sbin/useradd`
- atualizar pacotes - `dnf update systemd`
- verificar se tem atualizações  de pacotes - `dnf check-update systemd`