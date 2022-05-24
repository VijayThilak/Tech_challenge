# Tech Challenge

**Setup & Installation:**
git clone https://github.com/VijayThilak/tech_challenge.git 

**To test the solution on Minikube locally**

cd  tech_challenge ; minikube image build -t obird-v1 . &&  helm upgrade --install orderbird-deploy  orderbird-helm/ --values orderbird-helm/values.yaml


# To test the solution on K8s Environment with CI/CD?

Prerequisites

A server with Jenkins and Docker running on it (Jenkins user should be allowed to run Docker).
Github account.
Docker hub account.


**To install  Docker and Kubernetes Plugins**

Go to Manage Jenkins —> Manage Plugins, select the Available Tab
Check , Docker Pipeline, Kubernetes and CloudBees Docker Build and Publish, then Download now and install after restart
Restart Jenkins after the plugins have downloaded.


**Add Secrets to Jenkins**

From your dashboard, Go to Manage Jenkins —> Manage Credentials
Under Stores scoped to Jenkins, select Jenkins
Select Global Credentials (unrestricted)
On the left, select Add Credentials
Create a credential of type Username with password and add your docker username and password, for the ID, I used ’docker-repo-jenkinsci’


**Create a Jenkins pipeline job using Jenkinsfile **

https://raw.githubusercontent.com/VijayThilak/tech_challenge/main/Jenkinsfile and run the job with TagId.


**To check the CI pipeline/workflow, modify the content inside the base.html or login.html,etc and rerun the build**.

https://github.com/VijayThilak/tech_challenge/blob/main/web-app/website/templates/base.html

**Thank You!!**
