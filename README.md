# Django_Ecommerce_Application

I created an Ecommerce_Application This website  can displays products based on the category and Users can add and remove products to/from their cart while also specifying the quantity of each item if the customer is okay for products in the cart then go check out page and need to fill informarion for place the order once the place the order is done  cart will be empty product items are go to order page
onces the products are deliver to customer order status will be complated.

# Quick Demo:

https://github.com/KavyaPallamreddy/Ecommerce_Application/assets/116321339/b1d9d97f-dd7f-425a-b2b3-0cb7c1d578e9

To automated the end to end process of Ecommerce_Application and  creating the AWS infrastructure, continuously integrate and deploy the Ecommerce Application to AWS EKS Kubernetes Cluster

## DEVOPS Continuous integration and Continuous deployment
![image](https://github.com/KavyaPallamreddy/Employee_Portal_Application/assets/116321339/c922ea07-a051-4d22-a650-f7ab7068d74e)



![image](https://github.com/KavyaPallamreddy/Ecommerce_Application/assets/116321339/095c5138-69f9-4884-96ab-63e0b44bbe9d)



## Prerequisites
Here are the step-by-step details to set up an end-to-end Jenkins pipeline for an  Ecommerce Application, build the docker image, pushed the docker image to dockerhub using Argo CD deploy to AWS ECR Kubernetes.

### Prerequisites:
 1. AWS
 2. Jenkins server
 3. Docker
 4. Kubernetes cluster 
 5. Argo CD
 6. Terraform ( To create Jenkins Server on AWS)
 7. ansible ( To install jenkins,docker)

# Steps

## 1. Git Setup:

1. Create a new repository on GitHub to store the Ecommerce_Application

## 2. Infrastructure setup using Terraform:

1. Use Terraform to create a new VPC, subnets, and security groups in AWS.
2. Use Terraform to create an AWS EC2 instance to host the Jenkins Server.
3.  Use Terraform to create an AWS EKS cluster to run the Ecommerce Application.
4.  use Terraform to create a S3 bucket for store the Terraform statefile and DynamoDB table for statelocking

## 3. Ansible:
 1. Integrate Ansible with Terraform to build the environment on the AWS EC2 instance (Jenkins_Server).
 2.  Install the following packages using Ansible playbook:
            2.1 Jenkins
            2.2 Docker

## 4. Jenkins:
### Step 1: Log in to the Jenkins server 
configure Jenkins by Install the necessary Jenkins plugins like Git plugin,docker,python and Pipeline plugin
### Step 2 Create a new Jenkins pipeline:
In Jenkins, create a new pipeline job and configure it with the Git repository URL for the Ecommerce Application and Add a Jenkinsfile to the Git repository to define the pipeline stages.
### Step 3. Define the pipeline stages:
###### Stage 1: Checkout the source code from Git.
###### Stage 2: Build the Ecommerce_Application using Docker.
###### Stage 3: Run tests using flak8 and pytest.
###### Stage 4: Push the Docker Image into Repository.
###### Stage 5: Updated deployment.yaml with new docker image
###### Stage 6: Deploy the application to a test environment using argo cd.
###### Stage 7: Run user acceptance tests on the deployed application.
###### Stage 8: Promote the application to a production environment using Argo CD.
#### 4. Configure Jenkins pipeline stages:
###### Stage 1: Use the Git plugin to check out the source code from the Git repository.
###### Stage 2: Use the docker plugin to build the Ecommerce_Application
###### Stage 3: Use flak8 and pytest run unit tests.
###### Stage 4: Push the Docker Image into Repository.
###### Stage 5: Update the docker image into deployment.yaml file by using argo cd to deploy the application to a test environment.
 ###### Stage 6: Use a testing framework like Selenium to run user acceptance tests on the deployed application
###### Stage 7: Updated deployment.yaml with new docker image
###### Stage 8: Use Argo CD to promote the application to a production environment.
            
### 5. Set up Argo CD:
###### step1:  Install Argo CD on the Kubernetes cluster 

### 6. Run the Jenkins pipeline:
###### 6.1 Trigger the Jenkins pipeline to start the CI/CD process for the Python application.
###### 6.2 Monitor the pipeline stages and fix any issues that arise.


 ## OUTPUT
 ### Django_Ecommerce_Application:
 
This end-to-end Jenkins pipeline will automate the entire CI/CD process for a Python application, from code checkout to production deployment, using popular tools like Docker,Argo CD,and Kubernetes.
 
