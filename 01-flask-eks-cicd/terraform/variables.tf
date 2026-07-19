variable "region" {
  description = "AWS Region for VPC"
  type = string
  default = "us-east-1"
}

variable "env" {
  description = "Environment for deployment"
  type = string
}