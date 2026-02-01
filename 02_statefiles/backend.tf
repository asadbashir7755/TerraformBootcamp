terraform {
  backend "s3" {
    bucket = "asad-s3bucketforterraformbackend"
    region = "ap-south-1"
    key = "terraformpractice/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}