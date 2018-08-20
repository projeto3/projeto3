//Declarative Pipeline

pipeline {

    agent any

    stages {
       
        stage('Build') {

            steps {
                    git clone "https://github.com/projeto3/projeto3/"
                
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
