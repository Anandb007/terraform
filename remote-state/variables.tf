variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "state_bucket_name" {
  description = "The name of the S3 bucket for remote state"
  type        = string
}

variable "locks_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
}

variable "environment" {
  description = "The environment to deploy (e.g., dev, staging, prod)"
  type        = string
}