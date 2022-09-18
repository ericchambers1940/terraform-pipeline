pipeline {
    agent any

    tools {
      terraform 'Terraform'
    }
    stages {
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'

            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}