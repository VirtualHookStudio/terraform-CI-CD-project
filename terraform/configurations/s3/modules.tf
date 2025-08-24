module "s3_tfstate" {
  source              = "../../modules/s3"
  bucket_name_tfstate = "tfstate-viniciushemming-project-terraform-22082025"
}
