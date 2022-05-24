# Tech Challenge

Setup & Installation:
git clone https://github.com/VijayThilak/tech_challenge.git

How to test the solution on Minikube locally?

#Build image inside Minikube:
cd  web-app ; minikube image build -t obird-v1 . && helm install orderbird-dep  orderbird-helm/ --values orderbird-helm/values.yaml


# tech_challenge
