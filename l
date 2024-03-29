pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'Building your project...'
                // Add build commands here
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add test commands here
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying your project...'
                // Add deploy commands here
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline succeeded! Good job!'
        }
        failure {
            echo 'Pipeline failed. Check the logs for errors.'
        }
    }
}


         
 
