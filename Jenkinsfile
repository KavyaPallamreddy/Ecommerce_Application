pipeline {    
	agent any
	environment {
		IMAGE_REPO_NAME="ecommerce_application"
		DOCKER_USER_NAME="kavyapallamreddy"
		DOCKER_IMAGE= "${DOCKER_USER_NAME}/${IMAGE_REPO_NAME}:${env.BUILD_NUMBER}"
		REGISTRY_CREDENTIALS = credentials('docker-cred')
	}
    
    stages {
		stage('Checkout') {
		   steps {
			sh 'echo passed'
			git branch: 'main', url: 'https://github.com/KavyaPallamreddy/Ecommerce_Application.git'
		  }
    }
    
		stage('Build') {
		  steps {
			 sh 'docker build -t ${DOCKER_IMAGE} .'
		  }
    }
		
	
		stage('Push Docker Image') {  
		  steps {
			script {
				def dockerImage = docker.image("${DOCKER_IMAGE}")
				docker.withRegistry('https://index.docker.io/v1/', "docker-cred") {
				dockerImage.push()
				
				}
			}
		  }
		}             
		stage('Update Deployment File') {
			environment {
				GIT_REPO_NAME = "Ecommerce_Application"
				GIT_USER_NAME = "KavyaPallamreddy"
			}
				steps {
						script {
						withCredentials([string(credentialsId: 'github-cred', variable: 'GITHUB_TOKEN')])  {
						sh """
						  git config user.email "kavyareddy41997@gmail.com"
						  git config user.name "KavyaPallamreddy"
						  sed -i "s+${DOCKER_USER_NAME}/${IMAGE_REPO_NAME}.*+${DOCKER_USER_NAME}/${IMAGE_REPO_NAME}:${BUILD_NUMBER}+g" manifest_files/deployment.yaml
						  git add manifest_files/deployment.yaml 
						  git commit -m "Update deployment image "
						  git push https://${GITHUB_TOKEN}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:main
				 """
						}
						}
				 }
		 }
      }
    }
