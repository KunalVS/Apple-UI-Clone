pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-web-app:latest .'
            }
        }
        stage('Deploy Web Application') {
            steps {
                sh '''
                    docker stop practical10-container || true
                    docker rm practical10-container || true
                    docker run -d -p 8089:80 --name practical10-container jenkins-web-app:latest
                '''
            }
        }
    }
}
