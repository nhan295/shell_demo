#!/bin/bash

######################################################
# this script will list all resource in the AWS account
# Author: iamnhan
# Version: v0.0.1
#
# Following are the support services by the script 
# 1. EC2
# 2. S3
# 3. RDS
# 4. DynamoDB
# 5. Lambda
# 6. EBS
# 7. ELS
# 8. CloudFront
# 9. CloudWatch
# 10. SNS
# 11. SQS
# 12. RouteS3
# 13. VPC
# 14. CloudFormation
# 15. IAM
#
# Usage: /.aws_resource_list.sh <region> <service name>
# Example: ./.aws_resource_list.sh us-east-1 EC2
####################################################

# check if the required number og argument are passed
if [ $# -ne 2 ]; then 
    echo " Usage: $0 <region> <service name>"
    exit 1
fi

# check if the AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it and try again"
    exit 1
fi

# check if AWS CLI is configured
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. Please configure it and try again"
    exit 1
fi

# execute the AWS CLI command base in the service name
case $2 in
    EC2)
        aws ec2 describe-instances --region $1
        ;;
    S3)
        aws s3api list-buckets --region $1
        ;;
    RDS)
        aws dynamodb list-tables --region $1
        ;;
    DynamoDB)
        aws dynamodb list-tables --region $1
        ;;
    Lambda)
        aws lambda list-function --region $1
        ;;
    EBS)
        aws ec2 decribe-volumes --region $1
        ;;
    ELB)
        aws elb decribe-load-balances --region $1
        ;;
    CloudFront)
        aws cloudfront list-distribute --region $1
        ;;
    CloudWatch)
        aws cloudwatch list-metrics --region $1
        ;;
    SNS)
        aws sns list-topics --region $1
        ;;
    SQS)
        aws sqs list-queues --region $1
        ;;
    Route53)
        aws routes53 list-hosted-zones --region $1
        ;;
    VPC)
        aws ec2 decribe-vpcs --region $1
        ;;
    CloudFormation)
        aws cloudformation list-stacks --region $1
        ;;
    IAM)
        aws iam list-users --region $1
        ;;
    *)
        echo "Invalid service name. Please provide a valid service name."
        exit 1
        ;;
esac 



