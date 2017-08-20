pipeline {
    agent { label 'sonar' } 

    stages {
        stage('sonar') {
            steps{
                checkout scm
                sh 'ls -all'
                sh 'more gradle/wrapper/gradle-wrapper.properties'
                sh 'more build.gradle'
                sh 'chmod +x gradlew'
                sh './gradlew clean build test'
            }
            
        }
        stage('sonar2') {
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

