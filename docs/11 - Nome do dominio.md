## Nome de Domínio

- Para alterar o nome do domínio:
  
```
$ hostnamectl set-hostname <nome>
```
- Para verificar a alteração:

```
$ cat /etc/hostname
```
- Para deixar o nome vísivel na rede:
  
```
$ micro /etc/hosts

<ip> <nome> <alias>

```
