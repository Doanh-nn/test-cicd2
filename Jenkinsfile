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
                withDockerRegistry(credentialsId: 'harbor-registry', url: 'https://harbor.mobio.io/demo/') {
                    sh 'docker build -t harbor.mobio.io/demo/centos/cicd:v1 .'
                    sh 'docker push harbor.mobio.io/demo/centos/cicd:v1'
                }
            }
        }
    }
}
