pipeline {
    agent any 

    stages {
        stage('Checkout repository') { 
            checkout scm
        }
        stage('Build') { 
            sh docker build -t gradle:latest .
        }
    }
}

