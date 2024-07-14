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
					  dockerapp.push("latest")
                    }
                }
            }
        }
		
		
		stage ('Deploy Docker Image'){
            steps{
		     	script {
				
					try {
						sh 'docker stop bezkoder-app_1'
					} catch (err) {
						echo err.getMessage()
						echo ">>>> Error docker stop."
					}
					try {
						sh 'docker rm bezkoder-app_1'
						sh 'docker rmi -f jceleste/bezkoder-app:latest'
					} catch (err) {
						echo err.getMessage()
						echo ">>> Erro  docker rm."
					}          
				               
                    sh 'docker run -d -p 80:8080  jceleste/bezkoder-app:latest'
				}
				
			}
           
        }
		
		
    }

}