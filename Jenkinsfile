pipeline {
    agent { label 'sonar' } 

    stages {
        stage('Build & Test') {
            steps{
                checkout scm
                sh './gradlew clean build test'
            }
            
        }
        stage('SonarQube Analysis') {
            steps{
                withSonarQubeEnv('sonarqube') {
                  // requires SonarQube Scanner for Gradle 2.1+
                  // It's important to add --info because of SONARJNKNS-281
                  sh './gradlew --info sonarqube'
                }
            }
            
        }
    }
}

