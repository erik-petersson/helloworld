pipeline {
    agent any 

    stages {
        stage('Checkout repository') { 
            checkout scm
        }
        stage('Build') { 
            ./gradlew build
        }
    }
}

