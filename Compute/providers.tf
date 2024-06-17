
terraform {
  backend "s3" {
    bucket = "projectkuber-tfstate-files"
    key    = "compute_infra_app-1_tf/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-lock-ec2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = var.region1
  # profile = "Coder101"
}

provider "aws" {
  alias  = "us-east-2"
  region = var.region2
  # profile = "Coder101"
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name         = "terraform-state-lock-ec2"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}