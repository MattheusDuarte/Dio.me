#!/bin/bash

echo "Criando as imagens !!!"

docker build -t mattheuduartess/projeto1-backend:1.0 backend/.
docker build -t mattheuduartess/projeto1-database:1.0 database/.

echo "realizando o push das imagens"

docker push mattheuduartess/projeto1-backend:1.0
docker push mattheuduartess/projeto1-database:1.0

echo "Criando deployments"
kubectl apply -f pv-mysql-dados.yml
kubectl apply -f pvc-mysql-dados.yml
kubectl apply -f database-deployment.yml
kubectl apply -f backend-deployment.yml

echo "Criando serviço no cluster Kubernetes"

kubectl apply -f lb-service.yml
kubectl apply -f db-service.yml 

echo "Expondo a aplicação"
minikube service php --url