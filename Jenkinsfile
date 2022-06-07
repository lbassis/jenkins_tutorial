pipeline {
    agent any

    triggers {
      cron 'H * * * *'
    }

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
        }
    }
}
