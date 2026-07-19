module "vpc" {
  source = "./modules/VPC"
  env    = var.env
}