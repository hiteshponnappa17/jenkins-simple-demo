stage('Docker Build') {
    steps {
        sh "docker build -t hiteshponnappa77/myapp:${env.BUILD_NUMBER} ."
    }
}

stage('Docker Push') {
    steps {
        sh "docker login -u hiteshponnappa77 -p ${DOCKER_HUB_PASSWORD}"
        sh "docker push hiteshponnappa77/myapp:${env.BUILD_NUMBER}"
        sh "docker tag hiteshponnappa77/myapp:${env.BUILD_NUMBER} hiteshponnappa77/myapp:latest"
        sh "docker push hiteshponnappa77/myapp:latest"
    }
}
