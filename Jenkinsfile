pipeline {
environment {
registry = "vijaythilak/0bird"
registryCredential = 'Docker_hub'
dockerImage = ''
}
agent any
stages {
stage('Git Clone') {
steps {
git branch: 'main', credentialsId: 'Git_hub', url: 'https://github.com/VijayThilak/tech_challenge.git'
}
}
stage('Building our image') {
steps{
script {
dockerImage = docker.build registry + ":$BUILD_NUMBER"
}
}
}
stage('Docker Push') {
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
stage('Deploy on K8s') {
steps {
script {
def TagId = input(id: 'TagId', message: 'some message', parameters: [string(name:'TagId')]) 
//Run on Kubernetes master
sh "ssh root@Kubernetes_master_IP helm upgrade --set image.tag=${TagId}  --install obird-deploy obird-helm/ --values obird/values.yaml"           }
}
}
}
}
