
# Terraform AWS Infrastructure Project

Welcome to the Terraform AWS Infrastructure project. This repository contains a set of Terraform templates designed for deploying a scalable and secure cloud infrastructure on Amazon Web Services (AWS). It automates the creation of a multi-availability zone architecture, including VPC, subnets, EC2 instances, and a RDS MySQL database, with security groups for fine-grained access control.

## Prerequisites

Before you start using this project, ensure you have the following prerequisites set up and ready:

- **AWS Account**: You need an active AWS account. Sign up or log in at [AWS Management Console](https://aws.amazon.com/console/).
- **Terraform Installed**: Install Terraform (version 0.14 or later). Download it from [Terraform's official site](https://www.terraform.io/downloads.html).
- **AWS CLI Installed**: Optional but recommended for managing AWS credentials and services. [Follow the AWS CLI installation guide](https://aws.amazon.com/cli/).
- **Git**: For cloning the repository and version control. [Install Git](https://git-scm.com/downloads) if you haven't already.

## Setup Instructions

1. **Clone the Repository**: Clone this repository to get started with the project.
   ```sh
   git clone https://your-repository-url.git
   cd terraform-aws-infrastructure
   ```

2. **Configure AWS Credentials**: Set up your AWS credentials to allow Terraform to manage resources on your behalf. This can be done in several ways:
   - **AWS CLI**: Recommended for easy setup. Run `aws configure` and follow the prompts.
   - **Environment Variables**: Set `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` directly.
   - **Terraform AWS Provider**: Define credentials in the Terraform AWS provider block (not recommended for production).

3. **Initialize Terraform**: Prepare your project for Terraform commands.
   ```sh
   terraform init
   ```

4. **Review and Customize Configurations**: Before deploying, review the Terraform files (`*.tf`) and adjust any settings or variables to match your specific requirements. Pay special attention to:
   - VPC and subnet CIDR blocks
   - EC2 instance types and AMI IDs
   - Database configuration, including instance class and credentials
   - Security group rules for both EC2 instances and RDS database

## Deployment

To deploy your infrastructure, follow these steps:

1. **Plan Your Deployment**: Generate and review an execution plan for Terraform.
   ```sh
   terraform plan
   ```
2. **Apply Configuration**: Deploy your infrastructure to AWS.
   ```sh
   terraform apply
   ```
   Confirm the action by typing `yes` when prompted.

## Managing Infrastructure

- **Inspecting Current State**: Use `terraform state list` to view the current resources managed by Terraform.
- **Destroying Infrastructure**: If needed, you can remove all the resources managed by Terraform.
  ```sh
  terraform destroy
  ```
  Confirm the action by typing `yes` when prompted.

## Additional Notes

- Always ensure your AWS credentials are kept secure and not hardcoded in files.
- Consider using Terraform workspaces for managing different environments (e.g., staging, production).
- Review the AWS and Terraform documentation for advanced configurations and best practices.

  
## License

The code within this project is dual-licensed under the GLINCKER LLC proprietary license and the MIT License. This means it is open for reference and educational purposes, allowing for use, modification, and distribution in accordance with the MIT License's terms, while also respecting the proprietary rights and restrictions under the GLINCKER LLC license.

### MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


---

For more detailed Terraform documentation, visit [Terraform's official documentation](https://www.terraform.io/docs).
