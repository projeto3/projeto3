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
            timeout(60) {                // timeout waiting for input after 60 minutes
                    script {
                        // capture the approval details in approvalMap.
                        approvalMap = input id: 'test', message: 'Hello', ok: 'Proceed?',
                        parameters: [choice(choices: 'Dev\nProd', description: 'Select Ambiente', name: 'Build'), string(defaultValue: '', description: '', name: 'myparam')],  submitterParameter: 'APPROVER'
                    }
                }

            }

        }
               stage('Destroy') {

            steps {
                dir('terraform/') {
                sh "sudo terraform destroy"
                }
                echo 'apagando repo....'

            }

        }

    }

}
