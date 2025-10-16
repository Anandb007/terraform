variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0360c520857e3138f"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "subnet_id" {
  type    = string
  default = "subnet-0852a5ffaaf6287b8"
}

variable "key_name" {
  type    = string
  default = "office-key"
}

