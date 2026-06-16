# Amazon RDS MySQL

Provisioned a private Amazon RDS MySQL database instance.

## Configuration

- Engine: MySQL
- Deployment: Multi-AZ
- Accessibility: Private
- Port: 3306

## Security

- Deployed in private subnets
- Accessible only from EC2 Security Group

## Validation

Connected successfully from EC2 using:

mysql -h <RDS-ENDPOINT> -u admin -p

## Outcome

Implemented a secure and highly available database layer.
