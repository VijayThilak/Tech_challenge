pipeline {
environment {
registry = "YourDockerhubAccount/YourRepository"
registryCredential = 'Docker_hub'
dockerImage = ''
}
agent any
stages {
stage('Git Clone') {
steps {
git branch: 'main', credentialsId: 'Git_hub', url: 'https://github.com/YourGithubAccount/YourGithubRepository.git'
}
}
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage('Push to Docker hub') {
steps{
script {
docker.withRegistry( '', registryCredential ) {
dockerImage.push()
}
}
}
}
stage('Cleaning up') {
steps{
sh "docker rmi $registry:$BUILD_NUMBER"
}
}
stage('Waiting for approval'){
steps{
input('Do you want to proceed?')
}
}
stage('Deploy on K8s Environment') {
steps {
script {
  
// Enter the TagId 
def TagId = input(id: 'TagId', message: 'some message', parameters: [string(name:'TagId')])  

// Copy the obird-helm directory to Kubernetes master.
sh "scp -rv obird-helm/ root@Kubernetes_Master_IP:/home "
  
// Run on Kubernetes Master
sh "ssh root@Kubernetes_Master_IP helm upgrade --set image.tag=${TagId}  --install obird-deploy /home/obird-helm/ --values obird/values.yaml"          
}
}
}
}
}
