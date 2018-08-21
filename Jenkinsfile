//Declarative Pipeline

pipeline {

    agent any

    stages {

        stage('Build') {

            steps {
   
                git url: 'https://github.com/projeto3/projeto3.git'
                sh 'cp /var/lib/jenkins/workspace/provider.tf ./jenkiens/'
                echo 'Building..'

            }

        }
         stage('Config') {

            steps {
                dir('terraform/') {
                sh "terraform init"
                }
                echo 'Configuring..'

            }


        }
        stage('Criando Instancia') {
                        steps {
                    dir('terraform/') {
                    sh "terraform apply"
                    }
                    echo 'Criando Instancia..'

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
                stage('Destroy') {

            steps {
                dir('terraform/') {
                sh "pwd"
                }
                echo 'apagando repo....'

            }

        }

    }

}
