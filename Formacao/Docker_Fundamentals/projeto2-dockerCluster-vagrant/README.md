# Definição de um Cluster Swarm Local com o Vagrant
## Definições
1. Criar um Vagrantfile com as definições de 4 máquinas virtuais. Sendo uma máquina com o nome de master e as outras com os nomes denode01, node02 e node03;
2. Cada máquina virtual deverá ter um ip fixo;
3. Todas as MV deverão possuir o Docker pré-instalado;
4. A máquina com o nome de master deverá ser o nó manager docluster;
5. As demais máquinas deverão ser incluídas no cluster swarm comoworkers.

## Como executar
Para fazer a execução do  programa rodar o comando:
```bash
#cria o cluster
vagrant up

#mostra os nós
docker node ls
```

``