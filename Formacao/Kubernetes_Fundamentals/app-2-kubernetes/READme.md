Iremos utilizar uma imagem gerada pelo docker, dentro do Kubernetes, para isso: 
1. geramos uma imagem docker com dockerfile
``` Shell
    docker build . -t [nome do usuario]/[nome aplicação]:[tag]
```
2. fazer login do Hub do Docker
3. fazer upload da imagem com **docker push**
4. utilizar a imagem no kubernetes e subir o .yml
``` shell
    kubectl apply -f app-deployment
```
5. para expor um deployment
```shell
    kubectl expose deployment html-deployment --type=LoadBalancer --name=app-hmtl --port=80 
```
6.Criamos um LoaBalancer
```shell
    kubectl apply -f app-html-lb.yml
```