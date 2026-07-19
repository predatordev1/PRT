output "eks-vpc" {
  description = "VPC id for EKS VPC"
  value = aws_vpc.eks_vpc.id
}