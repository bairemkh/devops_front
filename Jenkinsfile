pipeline {
    any agent
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
    }
}
