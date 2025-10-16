terraform {
  backend "s3" {
    bucket         = "tom-terraform-state-bucket-unique-12345"   # use the bucket created
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
