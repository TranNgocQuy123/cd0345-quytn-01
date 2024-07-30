# TODO: Define the variable for aws_region
variable "region" {
  type        = string
  description = "region to deploy instance"
  default     = "us-east-1"
}

variable "lambda_name" {
  type        = string
  description = "lambda name"
  default     = "greet_lambda"
}

variable "lambda_function_payload" {
  type        = string
  description = "lambda function payload"
  default = "lambda_function_payload.zip"
}
