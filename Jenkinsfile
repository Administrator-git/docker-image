pipeline {
    agent any
    stages {
        stage('checkout scm') {
            steps {
                git branch: 'main', credentialsId: '03bb0430-268b-45af-9872-1fcff9ad8d7f', url: 'https://github.com/Administrator-git/docker-image.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('create docker image') {
            steps {
                sh 'docker build -t sadhu321/myapp:v1 .'
            }
        }
        stage('push image') {
            steps {
                withCredentials([string(credentialsId: 'sadhu321', variable: 'dockerhubcreds')]) {
                  sh "docker push sadhu321/myapp:v1"
                }
            }
        }   
    }
}
