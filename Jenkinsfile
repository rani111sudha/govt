pipeline {
    agent any
        stages {
           stage('Maven build') {
            steps {
               sh "mvn clean package"
               
                }
            }
          stage('Docker Build'){
            steps{
              sh "docker build -t rani111sudha/govt:0.0.4 ."
            }
          }
           stage('Docker Push'){
            steps{
                withCredentials([string(credentialsId: 'docker-hub', variable: 'hubPwd')]) {
 sh "docker login -u rani111sudha -p ${hubPwd}"
              sh "docker push rani111sudha/govt:0.0.4"
                    }
                  }
                } 
                   stage('Docker Deploy'){
            steps{
          sshagent(['Tomcat-creds']) {
              sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.5.99 docker run -d -p 8080:8080 --name govts rani111sudha/govt:0.0.4"
                      }
   
                   }
               }                                       
           }
        }
       
 
