
pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'demesne2001', url: 'https://github.com/demesne2001/GitSetUpSite.git']])
                echo 'checkout done'
            }
        }
        stage('Docker Image') {
            steps {
                script{
                    sh 'docker build -t FinalDockerDajngo .'
                    
                }
                echo 'Docker Image done'
            }
        }
        stage('Docker push') {
            steps {
                script{
                    sh 'docker login -u patelom0910 -p 09102001Om .'
                }
                echo 'Docker push done'
            }
        }
    }
}

