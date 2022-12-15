pipeline {
    agent any
    stages {
        stage('checkout scm') {
            steps {
                git branch: 'main', credentialsId: '03bb0430-268b-45af-9872-1fcff9ad8d7f', url: 'https://github.com/Administrator-git/docker-image.git'
            }
        }
    }
}
