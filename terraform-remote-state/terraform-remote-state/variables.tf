variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID to use"
  type        = string
  default     = "ami-0360c520857e3138f"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t3.small"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = "subnet-0c6db3dae330ce9ac"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "office-key"
}

