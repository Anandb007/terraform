variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t3.small"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
  default     = "example-ec2-instance"
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}

