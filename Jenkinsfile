pipeline {
    agent any
    tools {
        nodejs 'Node.js 16.14.2'
    }
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
