//Declarative Pipeline

pipeline {

    agent any

    stages {
       
        stage('Build') {

            steps {
               dir('terraform') {
                git url:  'https://github.com/projeto3/projeto3.git'
               }
                echo 'Building..'

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
