data "terraform_remote_state" "vpc" {
  backend = "local"
  config = {
    path = "../vpc/terraform.tfstate"
  }
}

module "eks" {
  source = "../../modules/eks"

  eks_cluster_name   = "eksprojectviniciushemming"
  subnet_public_a_id = data.terraform_remote_state.vpc.outputs.public_subnet_a_id
  subnet_public_b_id = data.terraform_remote_state.vpc.outputs.public_subnet_b_id

  node_desired_size = 1
  node_min_size     = 1
  node_max_size     = 1
}
