variable "region" {
  type        = string
  description = "region to deploy instance"
  default     = "us-east-1"
}

variable "instance_type" {
  type        = list(string)
  description = "instance type to deploy"
  default     = ["t2.micro", "m4.large"]
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0427090fd1714168b" # Amazon 2023
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = list(number)
  default     = [4, 2]
}
