pipeline {
    agent any
    environment {
        DOCKER_HUB = "https://hub.docker.com/"
        DOCKER_PRIVATE = credentials('dockerhub-creds')
    }
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
                sh "docker login -u ${DOCKER_PRIVATE_USR} -p ${DOCKER_PRIVATE_PSW} ${DOCKER_HUB}"
                sh "docker push sadhu321/myapp:v1"
            }
        }   
    }
}
