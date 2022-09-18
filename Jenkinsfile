pipeline {
    agent any

    stages {
        stage('Terraform Plan') {
            steps {
                echo 'INFO - Generating Terraform Plans'
                sh '${TERRAFORM_BIN}terraform.exe plan'

            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}