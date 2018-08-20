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
                sh "cd /var/lib/jenkins/workspace/Projeto\ 3/Job\ Dev"
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
