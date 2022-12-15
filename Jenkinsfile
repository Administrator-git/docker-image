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
                sh 'docker build -t myapp .'
            }
        }
        stage('push image') {
            steps {
                withCredentials([string(credentialsId: 'sadhu321', variable: 'paramesh')]) { # biding the password to variable as a secret text and passing the secret while login
                    sh "docker login -u sadhu321 -p ${paramesh}"
                    sh "docker tag mypp:latest sadhu321/myapp:v1"
                    sh "docker push sadhu321/myapp:v1"
                }
            }
        }   
    }
}
