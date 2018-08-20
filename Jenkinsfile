//Declarative Pipeline

pipeline {

    agent any

    stages {
        stage('Check Dependencia') {

            steps {
            // valida se tem algum build anterior do Terraform
                echo 'Checando..'
        //            sh "terraform --version"
       //         if (fileExists(".terraform/terraform.tfstate")) {
       //         sh "rm -rf .terraform/terraform.tfstate"
       //     }
       //     if (fileExists("status")) {
      //          sh "rm status"
      //      }
       //     }

       }
        stage('Build') {

            steps {

                echo 'Building..'
                  dir('/terraform/') {
                    sh 'sudo git clone "https://github.com/projeto3/projeto3/"'
                }
            }

        }
         stage('Config') {

            steps {

                echo 'Configuring..'

            }

        }

        stage('Test') {

            steps {

                echo 'Testing..'

            }

        }

        stage('Deploy') {

            steps {

                echo 'Deploying....'

            }

        }

    }

}
