pipeline {
    agent any

    stages {
        stage("Run Robot") {
            steps {
                // --nostatusrc prevents your job from failing automatically if any
                // tests fail. This is then later handled with the RF plugin with
                // pass thresholds
                sh script: "robot --nostatusrc .", returnStatus: true
            }
        }
    }

    post {
        always {
            // `onlyCritical: false` is for RF 3.x compatibility. This will be deprecated
            // and removed in the future.
            robot outputPath: '.', passThreshold: 80.0, unstableThreshold: 70.0, onlyCritical: false
        }
    }
}