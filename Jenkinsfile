pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Doanh-nn/test-cicd2.git'
            }
        }
        stage('push-iamge') {
            steps {
                withDockerRegistry(credentialsId: 'docker-hub1', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t doanh/cicd:v1 .'
                    sh 'docker push doanh/cicd:v1 .'
                }
            }
        }
    }
}