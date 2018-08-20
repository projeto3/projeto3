//Declarative Pipeline

pipeline {

    agent any

    stages {

        stage('Build') {

            steps {
   
               git url:  'https://github.com/projeto3/projeto3.git'
                echo 'Building..'

            }

        }
         stage('Config') {

            steps {
                sh "terraform init"
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
