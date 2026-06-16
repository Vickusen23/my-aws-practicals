## Subnets and Routing Configuration

Configured public and private subnets across two Availability Zones to ensure high availability.

### Public Subnets

* Public Subnet A: 10.0.1.0/24
* Public Subnet B: 10.0.2.0/24

### Private Subnets

* Private Subnet A: 10.0.3.0/24
* Private Subnet B: 10.0.4.0/24

### Routing

#### Public Route Table

* Associated with public subnets
* Default route (0.0.0.0/0) points to the Internet Gateway

#### Private Route Table

* Associated with private subnets
* Default route (0.0.0.0/0) points to the NAT Gateway

### Outcome

Application servers and databases remain private while retaining secure outbound internet access when required.
