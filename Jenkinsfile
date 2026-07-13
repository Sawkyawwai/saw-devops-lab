pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Repository checkout completed.'
            }
        }

        stage('Environment') {
            steps {
                sh '''
                echo "===== System Information ====="
                hostname
                whoami
                pwd
                uname -a
                git --version
                java -version
                docker --version
                '''
            }
        }

        stage('List Repository') {
            steps {
                sh '''
                echo "===== Repository Contents ====="
                ls -lah
                '''
            }
        }

    }

}
