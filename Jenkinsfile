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
                        script {
                        def password = 'changeme'
                        sh "sudo -S docker build -t devops_front ."
                        sh "echo -n ${password} "
                        }
                        }
    }
    stage('Push to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'bairemkh', passwordVariable: 'bairem123')]) {
                        docker.withRegistry('https://registry.hub.docker.com', 'Docker Hub') {
                            docker.image("devops_front").push()
                        }
                    }
                }
            }
        }
    }
}
