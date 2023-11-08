pipeline {
    agent any
    stages {
    stage('init') {
                steps {
                    sh 'node -v'
                    sh 'npm -v'
                    sh 'pwd'
                }
    }
    stage('install') {
                steps {
                    sh 'npm install'
                }
    }
    stage('build') {
                steps {
                    sh 'ng build'
                }
    }
    stage('Build Docker Images') {
                steps {
                    sh 'docker build -t devops_front -f .'
                }
    }
    stage('Push Docker Images to Docker Hub') {
                steps {
                    sh "docker login -u bairemkh -p bairem123"
                    sh 'docker push devops_front'
                }
        }
    }
}
