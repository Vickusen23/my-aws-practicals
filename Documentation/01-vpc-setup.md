## Amazon VPC Configuration

Created a custom Virtual Private Cloud (VPC) to provide network isolation for all application resources.

### Configuration

* **VPC Name:** My_AWS_PRACTICALS1-VPC
* **CIDR Block:** 10.0.0.0/16
* **Region:** us-east-1 (N. Virginia)

### Objectives

* Isolate application resources from the default VPC
* Enable secure communication between services
* Support high availability across multiple Availability Zones

### Components

* Internet Gateway attached to the VPC
* Public and private subnets distributed across two Availability Zones
* Dedicated route tables for public and private traffic

### Outcome

Successfully established a secure and scalable network foundation for the 3-tier architecture.

