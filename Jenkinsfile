pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/hiteshponnappa17/jenkins-simple-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'python3 addition.py'
            }
        }

        stage('Docker Build') {
            steps {
                sh "docker build -t hiteshponnappa77/myapp:${env.BUILD_NUMBER} ."
            }
        }

        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh "echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin"
                    sh "docker push hiteshponnappa77/myapp:${env.BUILD_NUMBER}"
                    sh "docker tag hiteshponnappa77/myapp:${env.BUILD_NUMBER} hiteshponnappa77/myapp:latest"
                    sh "docker push hiteshponnappa77/myapp:latest"
                }
            }
        }
    }
}
