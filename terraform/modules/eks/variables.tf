variable "eks_cluster_name" {
  type = string
}

variable "subnet_public_a_id" {
  type = string
}

variable "subnet_public_b_id" {
  type = string
}

variable "node_desired_size" {
  type = number
}

variable "node_min_size" {
  type = number
}

variable "node_max_size" {
  type = number
}
