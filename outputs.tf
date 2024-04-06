output "instance1_public_ip" {
  value = module.compute.instance1_public_ip
}

output "instance2_public_ip" {
  value = module.compute.instance2_public_ip
}

output "rds_endpoint" {
  value = module.database.rds_endpoint
}
