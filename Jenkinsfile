pipeline {
    agent any

    stages {
        stage('Terraform Plan') {
            steps {
                sh 'll'
                sh 'tree'
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