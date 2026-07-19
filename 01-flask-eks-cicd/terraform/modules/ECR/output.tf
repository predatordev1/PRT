output "ECR Repo" {
  description = "ECR Repo created for Docker"
  value = aws_ecr_repository.docker_artifectory.id
}