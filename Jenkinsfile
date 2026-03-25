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
                sh 'mvn clean package'   // or your build tool
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    docker.build("hiteshponnappa77/myapp:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Docker Push') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        docker.image("hiteshponnappa77/myapp:${env.BUILD_NUMBER}").push()
                        docker.image("hiteshponnappa77/myapp:${env.BUILD_NUMBER}").push("latest")
                    }
                }
            }
        }
    }
}
