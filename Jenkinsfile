pipeline {
    agent any

    tools {
      terraform 'Terraform'
    }
    stages {
        stage('Terraform Plan') {
            steps {
                sh '/var/jenkins_home/tools/terraform plan'

            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}