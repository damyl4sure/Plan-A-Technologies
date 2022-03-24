# Challenge1 Readme file

# Django

Created Django App --> django-admin startproject challenge1.

Added views.py in the inner challenge1 DIR for JSON rendering.

Added view_func.py in the inner challenge1 DIR which contains the fuctions for the data value pairs in views.py

cd to the inner challenge1 DIR and start Django APP -->  python manage.py startapp chellenge1

Run Django locally in the inner challenge1 DIR --> python manage.py runserver 8080

# Dockerize

Created requirements.txt --> pip freeze -l > requirements.txt

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