Terraform Project for CI/CD

This project aims to automate AWS infrastructure using Terraform, organized in a modular way, and deploy a Python application on an EKS cluster.

Project Structure

The project is organized as follows:

modules/: Contains reusable modules

vpc/: Module to create VPC

ecr/: Module to create ECR repository

eks/: Module to create EKS cluster

s3/: Optional S3 module (not included in the pipeline)

configurations/: Configurations that call the modules

vpc.tf

ecr.tf

eks.tf

s3.tf (optional)

app/: Python application for deployment on EKS

main.py

requirements.txt

Dockerfile

Provisioned Resources

Terraform will create the following AWS resources:

VPC: Virtual network for resource isolation

ECR: Docker image repository

EKS: Kubernetes cluster to run the application

S3 (optional): Object storage (not included in the pipeline)

Usage
Prerequisites

Terraform

AWS CLI

AWS account with permissions to create resources

Initialize Terraform

Navigate to the configurations folder and run Terraform initialization. Then plan and apply the infrastructure.

The S3 module is optional and will not be called by the CI/CD pipeline.

Deploy Python Application on EKS

Navigate to the app folder, build the Docker image, push it to ECR, and update Kubernetes manifests to deploy on EKS.

CI/CD Pipeline

The pipeline will:

Automatically apply Terraform configurations

Create or update VPC, ECR, and EKS infrastructure

Build and push the Docker image to ECR

Deploy the Python application on EKS

S3 is not included in the automated pipeline.

Notes

All Terraform resources are modular for easier maintenance and reuse

The pipeline can be integrated with GitHub Actions or GitLab CI/CD

License

This project is available under the MIT license
