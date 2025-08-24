🐍 Python Sample Application with Terraform & CI/CD 🚀

This repository demonstrates a complete infrastructure and deployment pipeline for a simple Python application using Terraform and GitHub Actions. The project is structured into three main pillars: the Python App, Terraform configurations, and CI/CD workflows.

📌 Project Pillars
1️⃣ Python Application

File: app.py

Name: Python-sample-application

🖥️ A simple frontend application for demonstration purposes.

2️⃣ Terraform Infrastructure

🏗️ Fully organized using configurations and modules folders for best practices.

Resources included:

☁️ S3: Stores .tfvars files to keep the state between CI/CD executions. Must exist before running workflows.

🌐 VPC: Networking layer for resources.

🐳 ECR: Container image repository.

☸️ EKS: Kubernetes cluster for deploying the application.

3️⃣ CI/CD Workflows

Located in .github/workflows/ with three main YAML files:

⚡ Create Environment: Sets up VPC, Subnets, Security Groups, ECR, and EKS.

🧹 Delete Environment: Tears down resources in reverse order.

🚀 Build & Deploy App: Builds the Python App container and deploys it to the EKS cluster.

📂 Project Structure
.
├── app.py
├── configurations/
│   └── terraform setup files
├── modules/
│   └── reusable Terraform modules
├── .github/
│   └── workflows/
│       ├── create-environment.yaml
│       ├── delete-environment.yaml
│       └── build-and-deploy.yaml

🛠️ Prerequisites

Terraform installed

AWS CLI configured

GitHub repository with proper secrets for CI/CD

Pre-existing S3 bucket to store .tfvars files

🔑 Environment Variables for CI/CD

To run the workflows, configure the following GitHub Actions secrets in your repository:

AWS_ACCESS_KEY_ID 🔑

AWS_SECRET_ACCESS_KEY 🔒

ID_AWS 🆔 (your AWS account ID)
