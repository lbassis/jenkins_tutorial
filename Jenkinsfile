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
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
