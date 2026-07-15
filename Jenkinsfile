pipeline {
    agent any

    environment {
        ENV = "${env.BRANCH_NAME}"
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: env.BRANCH_NAME,
                    url: 'https://github.com/shalshal3/infra-deployment-pipeline.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform show -no-color tfplan > tfplan.txt'
                    sh 'cat tfplan.txt'
                }
            }
        }

        stage('Approval') {
            steps {
                input message: 'Approve the deployment?', ok: 'Deploy'
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}
