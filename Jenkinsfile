def petClinic
pipeline {
    agent any
    environment {
        REGISTRY = "https://registry.hub.docker.com"
        IMAGE_NAME = "kertouch/devops_test"
        REGISTRY_CREDENTIALS_ID = "docker_hub_credentials"
        }
    stages {
        stage ('Checkout the code') {
            steps {
                git branch: 'master',
                        url: "https://github.com/nkasri/devops_test.git"

                    sh "ls -lat"
            }
        }

            stage("Build Docker Image") {
                  steps {
                    echo 'Start building the project image'
                    script {
                    petClinic = docker.build("${IMAGE_NAME}")
        }
                  }
       }

           stage('Push image to registry') {
           steps {
           script {
            docker.withRegistry("${REGISTRY}", "${REGISTRY_CREDENTIALS_ID}") {
                petClinic.push("${env.BUILD_NUMBER}")
                petClinic.push("latest")
            }
            }

           }
        }
}

}