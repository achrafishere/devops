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
 
           stage('SONARQUBE') {
            steps {
                sh 'mvn sonar:sonar -Dsonar.login=admin -Dsonar.password=sonar'
                 
            }
        }
        
         stage('Nexus'){
            steps{
                sh 'mvn deploy -DskipStaging=true'
            }
        }


        //     stage('Build image') {
        //    	steps {
       	// 	 sh "docker build -t achrafarfaoui/examen ."
       	// 	}
       	// 	}

        //    stage("login DockerHub") {
        //         steps{
        //             sh 'echo achraf000000 | docker login -u achrafarfaoui -p achraf000000'
        //         }
        // }

        //   stage("Push to DockerHub") {
        //         steps{
        //             sh 'docker push achrafarfaoui/examen '
        //         }
        // }


        // 	 stage("Docker-compose") {
        //         steps{
        //             sh 'docker-compose up -d'
        //         }
        // }

        
    }  
}

    
    
     
             
                 
             

    

