# ECR Repository
resource "aws_ecr_repository" "frontend" {
  name                 = var.repo_name
  image_tag_mutability = "MUTABLE"
  force_delete  = true
}
