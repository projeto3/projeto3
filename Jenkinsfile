//Declarative Pipeline

pipeline {

    agent any

    stages {
       
        stage('Build') {

            steps {
                dir('/terraform') {
                    sh 'pwd'
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
