pipeline {
    agent {
        labels "ec2"
    }
    stages {
        stage('Checking out run conditions') {
            steps {
                sh 'ls ./'
            }
        }

        stage('Run Dockerfile') {
            steps {
                sh 'sudo docker build -t common:build .'
            }
        }
    }
}