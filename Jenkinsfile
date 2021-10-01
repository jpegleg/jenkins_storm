pipeline {
    agent {
        label 'deb'
    }
    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/jpegleg/jenkins_storm/'
                sh "ls"
            }
            post {
                success {
                    sh "git status"
                }
            }
        }
    }
}
