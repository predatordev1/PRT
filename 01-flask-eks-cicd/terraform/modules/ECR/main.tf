resource "aws_ecr_repository" "docker_artifectory" {
  tags = {
    name = "${var.env}-flask-app-prt-ecr"
    owner = "Devendra"
  }
  
  name = "${var.env}-flask-app-prt-ecr"

  image_tag_mutability = "MUTABLE"
}