pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git url: 'https://github.com/hiteshponnappa17/jenkins-simple-demo.git', branch: 'main'
            }
        }

        stage('Run Script') {
            steps {
                sh 'chmod +x script.sh'
                sh './script.sh'
            }
        }

        stage('Run Python File') {
            steps {
                sh 'python3 addition.py'
            }
        }

    }
}
