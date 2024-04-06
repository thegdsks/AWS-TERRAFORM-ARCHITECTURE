# Terraform AWS Infrastructure Setup

This project contains Terraform configurations for setting up a robust AWS infrastructure. It includes configurations for VPC, EC2 instances, RDS MySQL database, and networking with security groups, spanning multiple availability zones.

## Prerequisites

- **AWS Account**: Ensure you have an AWS account and have administrative access to the AWS Management Console.
- **Terraform**: Install Terraform (version 0.14 or later recommended). Visit [Terraform's website](https://www.terraform.io/downloads.html) for installation instructions.
- **AWS CLI**: Optional, but recommended for configuring AWS credentials. [Install AWS CLI](https://aws.amazon.com/cli/) and configure it by running `aws configure`.

## Configuration

1. **Clone the Repository**: Start by cloning this repository to your local machine.

git clone <repository-url>
cd terraform-aws-infrastructure


2. **AWS Credentials**: Configure your AWS credentials using one of the following methods:
- Use the AWS CLI: `aws configure`
- Set environment variables: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and optionally `AWS_SESSION_TOKEN`.

3. **Terraform Initialization**:
- Navigate to the project directory.
- Initialize Terraform to download necessary providers:
  ```
  terraform init
  ```

4. **Configuration Adjustments** (Optional):
- Modify `variables.tf` and any `.tf` files in the `modules` directory to fit your specific AWS setup, such as AMI IDs, instance types, and VPC settings.

## Deployment

1. **Terraform Plan**:
- Run the following command to see the planned infrastructure changes:
  ```
  terraform plan
  ```

2. **Terraform Apply**:
- Apply the configuration to start building the AWS infrastructure:
  ```
  terraform apply
  ```
- Confirm the action by typing `yes` when prompted.

## Managing Infrastructure

- **Inspect State**: To view the current state of your infrastructure, use:


- **Destroy**: To tear down your infrastructure and delete all resources, run:

- Confirm the action by typing `yes` when prompted.

## Additional Information

- Ensure to review and adjust security group settings according to your security policies, especially rules allowing inbound traffic from the internet.
- Manage sensitive information, such as database passwords, securely. Consider using Terraform variables with environment variables or AWS Secrets Manager.

## License

The code within this project is dual-licensed under the GLINCKER LLC proprietary license and the MIT License. This means it is open for reference and educational purposes, allowing for use, modification, and distribution in accordance with the MIT License's terms, while also respecting the proprietary rights and restrictions under the GLINCKER LLC license.

### MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


---

For more detailed Terraform documentation, visit [Terraform's official documentation](https://www.terraform.io/docs).
