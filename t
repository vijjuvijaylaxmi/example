pipeline {
    agent any
    environment {
        PATH - "/opt/appache-maven-10.1.18/bin:$PATH"
    }
    stages {
        stage("clone code"){
            steps{
               git credentialsid: "git_credentials", url: 'https://github.com/vijjuvijaylaxmi/example.git'
            }
       }
        stage('build code'){
           steps{
              sh "mvn clean install"
           }
        }
    }
}
