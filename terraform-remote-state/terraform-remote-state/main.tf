#provider "aws" {
#  region = var.region
#}

module "ec2_instance" {
  source          = "./modules/ec2-instance"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  key_name        = var.key_name
  instance_name   = "office-ec2-instance"
  security_group_ids = ["sg-00ab1f31d801b5880"]  # add SG ids if needed
  tags            = {
    Environment = "dev"
    Owner       = "office"
  }
}

