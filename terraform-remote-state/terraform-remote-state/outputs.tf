output "s3_bucket_name" {
  value = aws_s3_bucket.terraform_state.bucket
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_lock.name
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}

output "ec2_instance_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_instance_private_ip" {
  value = module.ec2_instance.private_ip
}

