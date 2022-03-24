# Challenge1 Readme file

# Django

Created Django App --> django-admin startproject challenge1.

Added views.py for JSON rendering.

Added view_func.py which contains the fuctions for the data value pairs in views.py

Created requirements.txt --> pip freeze -l > requirements.txt


# Dockerize
Added dockerfile to start container as rootless user.

cd into the challenge1 DIR and build docker image -> docker build . -t plan-a-tech-challenge1:latest

Tag and push docker image to dockerhub public repository

--> docker tag plan-a-tech-challenge1:latest 76896/plan-a-tech-challenge1:latest

--> docker push 76896/plan-a-tech-challenge1:latest


# Kubernetes
Kubenetes folder contains server, deployment and ingress manaifest YAML files.

deployment.yaml file referenced the public tagged image on dockerhub

--> Create namespace -- kubectl create ns challenge1

cd into the Kubernetes folder and apply the kubentes manifest files --> kubectl apply -f .