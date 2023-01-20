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
              sh "docker build -t rani111sudha/govt:0.0.2 ."
            }
          }
           stage('Docker Push'){
            steps{
              sh "docker login -u rani111sudha -p xxxxx"
              sh "docker push rani111sudha/govt:0.0.2"
            }
          } 
                                                 
        }
}
