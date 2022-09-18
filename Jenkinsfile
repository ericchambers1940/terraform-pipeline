pipeline {
    agent any

    tools {
        terraform 'terraform'
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