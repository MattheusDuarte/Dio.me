Para expor o deployment
```Shell
kubectl expose deployment app-html-deployment  --type=LoadBalancer --name=app-html --port=80
```
Para expor o endereço que tenho de utilizar e a porta utilizando o minikube
```Shell
minikube service --url app-html
```