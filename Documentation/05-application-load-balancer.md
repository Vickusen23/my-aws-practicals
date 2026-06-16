# Application Load Balancer (ALB)

Deployed an internet-facing Application Load Balancer across public subnets.

## Configuration

- Listener: HTTP (80)
- Listener: HTTPS (443)
- SSL/TLS Certificate: AWS Certificate Manager (ACM)
- Target Group: EC2 instances in private subnets
- Health Check Path: /

## Features

- Distributes traffic across multiple EC2 instances
- Terminates SSL/TLS at the load balancer
- Redirects HTTP traffic to HTTPS

## Outcome

Ensured secure, highly available, and scalable access to the application.
