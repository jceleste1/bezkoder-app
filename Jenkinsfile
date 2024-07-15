pipeline {
    agent any
	
	environment { 
        registry = "jceleste/bezkoder-app" 
        dockerImage = '' 
		tag_version = "${env.BUILD_ID}"		
		tag_generic  =  '{{TAG}}'
    }


    stages {
		
		
         stage ('Build Docker Image.....'){
             steps{
			 
                 script {
				     dockerapp = docker.build("jceleste/bezkoder-app:${env.BUILD_ID}", '-f ./Dockerfile ./ ')
					 
                }
             } 
		}	
		
		stage ('Push Docker Image'){
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com/','dockerhub'){
					  dockerapp.push("${env.BUILD_ID}")
                    }
                }
            }
        }
        
     
        stage ('Kill instance resource jornaul'){
            steps{
		     	script { 
                    sh " docker rm -f jornaul"
				}
				
			}
           
        }
       
		
		
		stage ('Deploy Docker Image'){
            steps{
		     	script {
				               
                    sh "docker run  --name   jornaul  -d -p 80:8080  jceleste/bezkoder-app:${env.BUILD_ID}"
				}
				
			}
           
        }
		
		
    }

}