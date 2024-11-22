provider "aws" {
  region  = "us-east-2"
  profile = "palam"
}

resource "aws_vpc" "pc_vpc1" {
  cidr_block       = "10.0.0.0/16" #IP Ranges available inside the VPC 
  instance_tenancy = "default"

  tags = {
    "Name" = "PC-vpc1"
  }
}
