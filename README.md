# My_AWS_PRACTICALS1 – Production-Style AWS 3-Tier Architecture

## Overview

This project demonstrates the design and deployment of a secure, scalable, and highly available AWS 3-tier architecture using industry best practices.

The architecture includes a custom VPC, public and private subnets, an internet-facing Application Load Balancer, Auto Scaling EC2 instances, Amazon RDS MySQL, Amazon S3, Route 53 custom domain routing, ACM SSL/TLS certificate, and HTTPS enforcement.

## Architecture Diagram

![AWS 3-Tier Architecture](aws-3tier-architecture-diagram.png)

## Detailed Documentation

- [VPC Setup](Documentation/01-vpc-setup.md)
- [Subnets and Routing](Documentation/02-subnets-routing.md)
- [Security Groups](Documentation/03-security-groups.md)
- [EC2 Launch Template](Documentation/04-ec2-launch-template.md)
- [Application Load Balancer](Documentation/05-application-load-balancer.md)
- [Auto Scaling Group](Documentation/06-auto-scaling-group.md)
- [RDS MySQL](Documentation/07-rds-mysql.md)
- [S3 and IAM Integration](Documentation/08-s3-iam-integration.md)
- [Route 53 Custom Domain](Documentation/09-route53-custom-domain.md)
- [ACM and HTTPS](Documentation/10-acm-https.md)
- [Validation and Testing](Documentation/11-validation-testing.md)

## AWS Services Used

* Amazon VPC
* Public and Private Subnets
* Internet Gateway
* NAT Gateway
* Amazon EC2
* Application Load Balancer (ALB)
* Target Group
* Auto Scaling Group (ASG)
* Amazon RDS MySQL
* Amazon S3
* IAM Roles and Policies
* Amazon Route 53
* AWS Certificate Manager (ACM)
* AWS Systems Manager Session Manager

## Key Features

* Custom VPC with public and private subnet isolation
* Multi-AZ architecture for high availability
* Private EC2 application servers
* Internet-facing Application Load Balancer
* Auto Scaling Group for self-healing and scalability
* Secure EC2 access using Systems Manager Session Manager
* Amazon RDS MySQL deployed privately
* EC2-to-RDS connectivity over MySQL port 3306
* EC2-to-S3 access using IAM role permissions
* Custom domain routing with Route 53
* HTTPS encryption using ACM
* HTTP to HTTPS redirection

## Validation Performed

* Verified ALB health checks and healthy targets
* Tested web access through the ALB DNS name
* Tested access through the custom domain
* Confirmed ACM certificate issuance
* Verified HTTPS access with SSL/TLS encryption
* Tested HTTP to HTTPS redirection
* Connected privately from EC2 to Amazon RDS MySQL
* Uploaded files from EC2 to S3 using IAM role-based access

## Screenshots

Screenshots are available in the `Screenshots/` folder and include evidence of:

* Route 53 Alias Record
* ACM Certificate Issued
* ALB Healthy Targets
* Auto Scaling Group Configuration
* RDS Connectivity Test
* S3 Integration Test
* HTTPS Custom Domain Access

## User Data Script

The EC2 Launch Template used the following User Data script to automatically install and start Apache on new instances:

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat <<EOF > /var/www/html/index.html
Hello world! Welcome to Vick's SAA Practical
EOF
```

## Live Demo

🔗 https://myawspractical.com

## Security Highlights

* EC2 instances are deployed in private subnets
* RDS is not publicly accessible
* EC2 accepts HTTP traffic only from the ALB security group
* RDS accepts MySQL traffic only from the EC2 security group
* S3 access is granted through IAM roles instead of hardcoded credentials
* HTTPS is enforced using ACM and ALB listener rules

## Lessons Learned

* Public subnets require a route to the Internet Gateway
* Private subnets should use NAT Gateway for outbound-only internet access
* ALB should be public while EC2 and RDS remain private
* Security groups should follow least-privilege access
* IAM roles are safer than static access keys
* Route 53 Alias records are preferred for routing domains to ALBs
* ACM simplifies SSL/TLS certificate management
* User Data helps automate instance provisioning

## Future Improvements

* Add Infrastructure as Code using Terraform or CloudFormation
* Implement CI/CD with GitHub Actions and AWS CodePipeline
* Add CloudWatch dashboards and SNS alerting
* Add AWS WAF for additional application protection
* Containerize the application using Docker and Amazon ECS

## Author

**Victor Pius Usen**

AWS Certified Solutions Architect – Associate | AWS Certified Cloud Practitioner | Data Analytics Professional
