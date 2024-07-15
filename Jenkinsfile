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
        
        stage('Stop docker containers'){
            steps{
                script {
                   sh 'docker stop $(docker ps -a -q)'
                
                }
            }
        }
        
          stage('Clean docker containers'){
            steps{
                script {
                   sh 'docker rm $(docker ps -a -q)'
                }
            }
        }
		
		
		stage ('Deploy Docker Image'){
            steps{
		     	script {
				               
                    sh "docker run -d -p 80:8080  jceleste/bezkoder-app:${env.BUILD_ID}"
				}
				
			}
           
        }
		
		
    }

}