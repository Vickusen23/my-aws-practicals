# HTTPS with AWS Certificate Manager

Implemented SSL/TLS encryption using AWS Certificate Manager.

## Configuration

- Requested a public certificate for:
  - myawspractical.com
  - *.myawspractical.com

- Validated ownership using Route 53 DNS records

## ALB Configuration

- Attached the ACM certificate to the HTTPS listener
- Configured HTTP to HTTPS redirection

## Outcome

All application traffic is encrypted using HTTPS.
