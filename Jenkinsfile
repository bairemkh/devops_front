pipeline {
    agent {
        node {
            label 'Node 16.14.2' // Use the name of the Node.js installation
        }
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
