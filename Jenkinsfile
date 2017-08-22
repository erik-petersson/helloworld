pipeline {
    agent { label 'sonar' } 

    stages {
        stage('Build & Test') {
            steps{
                checkout scm
                
            }
            
        }
        stage('SonarQube Analysis') {
            steps{
                sh './gradlew --info clean build test pitest sonarqube artifactoryPublish'
            }
            
        }
    }
}

