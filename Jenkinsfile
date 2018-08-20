//Declarative Pipeline

pipeline {

    agent any

    stages {
       
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
