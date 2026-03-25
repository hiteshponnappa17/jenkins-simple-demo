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
                    docker.build("myapp:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Docker Run') {
            steps {
                script {
                    docker.image("myapp:${env.BUILD_NUMBER}").run('-d -p 8080:8080')
                }
            }
        }
    }
}
