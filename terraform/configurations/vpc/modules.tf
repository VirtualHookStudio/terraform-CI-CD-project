module "vpc" {
  source = "../../modules/network"

  cidr-blocks       = ["10.0.0.0/24", "10.0.0.0/26", "10.0.0.64/26"]
  names-network     = ["vpc-main", "public", "frontend"]
  availability_zone = var.availability_zone
}
