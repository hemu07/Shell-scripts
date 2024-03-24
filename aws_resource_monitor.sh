#!/bin/bash
###############################################################

#Author: Hemali Jayswal
#Date: 24th March
#script to monitor & report the AWS resources
#Resources monitored:AWS s3, AWS EC2, AWS Lambda, AWS IAM users

###############################################################

#set -x # debug mode for running script

echo "list IAM users: "
aws iam list-users | jq '.Users[].UserId'

echo "list ec2 instances: "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "list s3 buckets: "
aws s3 ls

echo "list lambda functions: "
aws lambda list-functions | jq '.Functions'


