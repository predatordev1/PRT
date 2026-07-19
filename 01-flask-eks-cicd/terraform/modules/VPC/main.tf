resource "aws_vpc" "eks_vpc" {
  tags = {
        name = "${var.env}-eks_vpc"
        Environment = var.env
        Owner = "Devendra"
  }
  cidr_block = "10.0.0.0/16"
}