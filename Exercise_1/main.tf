# TODO: Designate a cloud provider, region, and credentials
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}
provider "aws" {
  region  = var.region
  profile = "default"
}
# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count         = var.ec2_instance_count[0]
  ami           = var.ec2_ami_id
  instance_type = var.instance_type[0]
  tags = {
    Name = "Udacity T2"
  }
}
# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity_M4" {
  count         = var.ec2_instance_count[1]
  ami           = var.ec2_ami_id
  instance_type = var.instance_type[1]
  tags = {
    Name = "Udacity M4"
  }
}
