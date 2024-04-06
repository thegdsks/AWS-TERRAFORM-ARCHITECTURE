provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source = "./modules/networking"
}

module "compute" {
  source         = "./modules/compute"
  instance1_name = var.instance1_name
  instance2_name = var.instance2_name
  public_subnets = module.networking.public_subnets
}

module "database" {
  source          = "./modules/database"
  private_subnets = module.networking.private_subnets
  web_sg          = module.compute.web_sg
}
