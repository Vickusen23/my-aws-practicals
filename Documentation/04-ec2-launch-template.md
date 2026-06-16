# EC2 Launch Template and User Data

Created a Launch Template to standardize EC2 instance configuration and support Auto Scaling.

## Configuration

- Amazon Linux 2023 AMI
- IAM Role attached for S3 access
- Systems Manager Session Manager enabled
- Apache web server installed using User Data

## User Data Functions

- Updates packages
- Installs Apache HTTP Server
- Starts and enables the service
- Deploys a sample web page automatically

## Outcome

New instances are provisioned automatically with consistent configuration and no manual intervention.
