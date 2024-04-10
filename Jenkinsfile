pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub repository
                git 'https://github.com/deshleyjordy/saucedemo-x'
            }
        }
        
        stage('Build') {
            steps {
                // Build your project, just echo'ing now
                sh 'echo "Deploying artifacts"'
            }
        }
        
        stage('Test') {
            steps {
                // 
                sh robot .
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy artifacts, just echo'ing now
                sh 'echo "Deploying artifacts"'
            }
        }
    }
    
    post {
        always {
            // Clean up or perform any post-build actions
            echo 'Pipeline finished!!!'
        }
    }
}