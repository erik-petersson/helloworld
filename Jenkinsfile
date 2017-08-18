pipeline {
    agent any 

    stages {
        stage('Checkout repository') { 
            sh 'docker --version'
        }
        stage('Build') { 
            sh './gradle test'
        }
    }
}

