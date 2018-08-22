//Declarative Pipeline

pipeline {

    agent any
    parameters {
        choice(
            // choices are a string of newline separated values
            // https://issues.jenkins-ci.org/browse/JENKINS-41180
            choices: 'Desenvolvimento\Producao',
            description: '',
            name: 'Qual o Ambiente de Deploy')
    }
    stages {
       //  stage('Dependencias') {
//
         //   steps {
   
       //     dir('/') {
       //             sh "sudo rm -r *"
        //            }
                
       //         echo 'Destruindo build Anterior..'

       //     }

    //    }
        stage('Build') {

            steps {
   
                git url: 'https://github.com/projeto3/projeto3.git'
                
                echo 'Building..'

            }

        }
         stage('Config') {

            steps {
                dir('terraform/') {
                    sh 'cp /var/lib/jenkins/workspace/provider.tf .'
                sh "sudo terraform init"
                }
                echo 'Configuring..'

            }


        }
        stage('Criando Instancia') {
                        steps {
                    dir('terraform/') {
                    sh "sudo terraform apply -auto-approve"
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
