# Amazon S3 and IAM Integration

Configured secure EC2-to-S3 access using IAM Roles.

## Implementation

- Created an S3 bucket
- Attached an IAM Role to EC2 instances
- Granted required S3 permissions

## Validation Commands

List bucket contents:

aws s3 ls s3://my-aws-practicals1-s3-bucket/

Upload a test file:

aws s3 cp test.txt s3://my-aws-practicals1-s3-bucket/

## Outcome

Enabled secure S3 access without hardcoded AWS credentials.
