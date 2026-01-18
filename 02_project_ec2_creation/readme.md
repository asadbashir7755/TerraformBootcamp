In real Terraform projects, we avoid hardcoding AMI IDs. Instead, we use the aws_ami data source to dynamically fetch the latest OS image, making infrastructure portable and maintainable.


terraform init
terraform plan
terraform apply
terraform plan -destroy aws_instance.example
terraform destroy aws_instance.example
