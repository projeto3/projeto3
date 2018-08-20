//Declarative Pipeline

pipeline {

    agent any

    stages {
        stage ('Checkout') {

   // Get some code from a GitHub repository
   checkout(
     [$class: 'GitSCM',
      branches: [[name: '*/master']],
      browser: [$class: 'GithubWeb', repoUrl: 'https://github.com/jenkinsci/git-plugin'],
        )
      }
        
        
        
        stage('Build') {

            steps {
   
               
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
