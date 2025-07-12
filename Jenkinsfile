pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh "ls -la"
                    sh "docker build -t piyushpatil3423/flask-image:v1.${BUILD_ID} . --no-cache "
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    sh "docker push piyushpatil3423/flask-image:v1.${BUILD_ID}"
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker run -d -p 3000:3000 -n htc_container piyushpatil3423/flask-image:v1.${BUILD_ID}
                '''
            }
        }
    }

}
