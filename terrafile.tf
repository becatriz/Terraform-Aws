module "servers" {
  source = "./servers"
  servers = 1
  providers = {
    aws = "aws.west"
  }
}

output "ip_address" {
  value = "${module.servers.ip_address}"
}

