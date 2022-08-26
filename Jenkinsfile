pipeline {
    agent any
        
    stages {
         stage('Build') {
            steps {         
              bat 'mvn clean install -s settings.xml'             
            }
        }
        stage('Run the Server'){
            steps {
                bat 'mvn spring-boot:run'
            }
        }
    } 
}
