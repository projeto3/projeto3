//Declarative Pipeline

pipeline {

    agent any
  
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
                stage('Confirm Deploy Prod?') {

            steps {
           // Elvis ira analisar condição     def userInput = false
                try {
                        userInput = input(
                        id: 'Proceed1', message: 'Build Realizada com Sucesso??', parameters: [
                        [$class: 'BooleanParameterDefinition', defaultValue: true, description: '', name: 'Please confirm you agree with this']
                        ])
                }
                catch(err) { // timeout reached or input false
                        def user = err.getCauses()[0].getUser()
                        if(userInput == true) { // SYSTEM means timeout.
                              echo "this was successful"
                        } else {

                            echo "Aborted by: [${user}]"
                        }
                    }
                echo 'Deploy prod?'

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
