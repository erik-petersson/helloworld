pipeline {
    agent any 

    stages {
        stage('Checkout repository') { 
            steps{
                sh 'docker --version'
            }
            
        }
        stage('Build') { 
            steps{
                sh './gradle test'
            }
            
        }
    }
}

