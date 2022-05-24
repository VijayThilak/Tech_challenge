# Tech Challenge

Setup & Installation:
git clone https://github.com/VijayThilak/tech_challenge.git

How to test the solution on Minikube locally?

cd  tech_challenge ; minikube image build -t obird-v1 . &&  helm upgrade --install orderbird-deploy  orderbird-helm/ --values orderbird-helm/values.yaml


# How to test the solution on K8s Environment?

Prerequisites

A server with Jenkins and Docker running on it (Jenkins user should be allowed to run Docker).


Installing  Docker and Kubernetes Plugins
Go to Manage Jenkins —> Manage Plugins, select the Available Tab
Check , Docker Pipeline, Kubernetes and CloudBees Docker Build and Publish, then Download now and install after restart
Restart Jenkins after the plugins have downloaded.


Create A Jenkins pipeline job using Jenkinsfile https://raw.githubusercontent.com/VijayThilak/tech_challenge/main/Jenkinsfile adn run the job 
with TagId.

