pipeline {
    agent any

    stages {
        stage('Terraform Plan') {
            steps {
                echo 'INFO - Generating Terraform Plans'
                sh '${TERRAFORM} plan'

            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}