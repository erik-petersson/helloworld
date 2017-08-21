pipeline {
    agent { label 'sonar' } 

    stages {
        stage('Build & Test') {
            steps{
                checkout scm
                def server = Artifactory.server 'Artifactory'
                sh './gradlew clean build test pitest sonarqube artifactoryPublish'
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

