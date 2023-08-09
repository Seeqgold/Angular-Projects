pipeline {
    agent any

    stages {
        stage('Git Clone') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/Adebisit06/Angular-Projects.git'
            }
        }
        stage('Build and Push') {
            steps {
                script {
               // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'dockerhub_id') {
                    bat "docker build -t Adebisit99/deno-docker:pipe ."
                    bat "docker push Adebisit99/deno-docker:pipe"
                }

            } 
       }
    }
}
