pipeline {
    agent any

    stages{
        stage('Clone'){
             steps{  
                 git branch: 'main', url: 'https://github.com/achrafishere/examen_devops.git'
             }
        }  

      
       stage('MVN CLEAN') {
            steps {
                sh 'mvn clean'
            }
        }

      
        stage('MVN COMPILE') {
            steps {
                   sh 'mvn compile'
                 
            }
        }

      
       stage("Unit tests") {
           steps {
                   sh 'mvn test'
             }
             
        }
        

        
         stage('clean and package') {
            
            steps {
                sh 'mvn clean package'  
            }
     
            } 
 

        
  
        
    }  
}

    
    
     
             
                 
             

    

