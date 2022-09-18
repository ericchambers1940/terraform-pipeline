pipeline {
    agent any

    stages {
        stage('Terraform Plan') {
            steps {
                echo 'INFO - Generating Terraform Plans'
                sh '${TERRAFORM_BIN} plan'

            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}