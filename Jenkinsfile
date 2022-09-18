pipeline {
    agent any

    tools {
      terraform 'Terraform'
    }
    stages {
        stage('Terraform Plan') {
            steps {
                sh 'terraform fmt'
                sh 'terraform test'
                sh 'terraform apply'

            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}