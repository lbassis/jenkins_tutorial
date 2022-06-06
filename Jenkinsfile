pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'make clean'
                sh 'make'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './test.bin'
            }
        }
    }
    post {
        success {
            echo 'Tests finished successfully!'
        }
        failure {
            echo 'Tests failed!'
            mail to: 'lucas.assis@encora.com',
                subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                body: "Something is wrong with ${env.BUILD_URL}"
        }
    }
}
