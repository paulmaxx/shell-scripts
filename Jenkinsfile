pipeline {
   agent any 
  stages{
     stage('Init'){
         steps  {
            echo "Testing..."
            }
        }
        stage('Build'){
           steps {
               echo 'Code deployed.'
           }
        }
        stage ('Deploy'){
           steps {
              echo 'code deployed.'
          }
      }
  }
}

pipeline {
   agent any
   stages{
      stage('Build'){
         steps {
            sh 'mvn clean package'
           }
         post {
         success {
            echo 'Now ArchiveArtifacts: '**/target/*.war'
          }         
}
}
}
