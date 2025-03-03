# Terraform AWS EC2 Flask App Deployment

This project provisions an EC2 instance inside a VPC using Terraform. The instance hosts a simple Flask application.

## Features
- Creates a VPC with a public subnet.
- Provisions an EC2 instance with a security group allowing HTTP & SSH access.
- Deploys a Flask app running on port 80.

## Prerequisites
- AWS CLI installed & configured
- Terraform installed
- SSH key (`~/.ssh/id_rsa.pub`) available
