provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "../../modules/ec2-instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  instance_name = "dev-ec2-instance"
  tags = {
    Environment = "dev"
  }
}

