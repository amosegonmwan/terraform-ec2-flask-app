# Terraform AWS Infrastructure Setup

This project uses Terraform to provision an AWS infrastructure that includes a VPC, a public subnet, a security group, and an EC2 instance running a Flask web application.

## Project Structure

```
.
├── providers.tf      # AWS provider configuration
├── variables.tf      # Terraform variables
├── vpc.tf            # VPC, subnet, and route table setup
├── ec2.tf            # Security group and EC2 instance provisioning
├── outputs.tf        # Output values (e.g., public IP of the instance)
├── app.py            # Simple Flask web application
├── README.md         # Project documentation
```

## Prerequisites

Before using this Terraform setup, ensure you have the following:
- AWS CLI installed and configured
- Terraform installed
- An existing SSH key pair (`~/.ssh/id_rsa.pub`)

## Usage

1. **Initialize Terraform**
   ```sh
   terraform init
   ```

2. **Plan the infrastructure**
   ```sh
   terraform plan
   ```

3. **Apply the configuration**
   ```sh
   terraform apply -auto-approve
   ```

4. **Retrieve the Public IP**
   ```sh
   terraform output instance_public_ip
   ```
   Use the displayed public IP to access the Flask application in your browser.

## Destroying the Infrastructure

To remove all created resources:
```sh
terraform destroy -auto-approve
```

## Notes
- The Flask application runs on port 80.
- The security group allows SSH and HTTP access from any IP (`0.0.0.0/0`). Modify this for security in production.

## License
This project is open-source and available for customization.

---

Enjoy building with Terraform! 🚀
