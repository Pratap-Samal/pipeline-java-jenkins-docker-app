pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t java-jenkins-docker:latest .'
            }
        }
        stage('Docker Run') {
            steps {
                bat 'docker run --rm java-jenkins-docker:latest'
            }
        }        
    }
}