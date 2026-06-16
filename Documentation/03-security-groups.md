## Security Groups Configuration

Implemented least-privilege access using dedicated security groups.

### ALB Security Group

* Inbound: HTTP (80) and HTTPS (443) from 0.0.0.0/0
* Outbound: All traffic

### EC2 Security Group

* Inbound: HTTP (80) from the ALB Security Group only
* Outbound: All traffic

### RDS Security Group

* Inbound: MySQL (3306) from the EC2 Security Group only
* Outbound: Default

### Outcome

Restricted access between application components while maintaining secure communication paths.
