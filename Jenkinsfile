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
                docker.withRegistry('https://hub.docker.com/', 'dockerhub-creds') {
                    docker tag appservice-1.0-SNAPSHOT.war sadhu321/appservice-1.0-SNAPSHOT.war
                }
            }
        }
    }
}
