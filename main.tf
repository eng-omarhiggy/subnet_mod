resource "aws_subnet" "main" {
  vpc_id     = var.main_vpc
  cidr_block = "10.0.1.0/24"

  tags = {
       Name = "${terraform.workspace}-subnet"
  }
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.18.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
