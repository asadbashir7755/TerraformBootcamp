# Terraform README

## What is Terraform?

Terraform is an open-source infrastructure as code (IaC) tool that allows you to define and manage infrastructure resources in a declarative configuration language.

## Why do we use Terraform?

We use Terraform to automate the creation, modification, and deletion of cloud and on-premises resources, making infrastructure management more efficient, consistent, and reproducible.

## What is IaC?

IaC (Infrastructure as Code) is the practice of managing and provisioning infrastructure through code rather than manual processes. It allows version control, automation, and repeatability.

## Example

Using Terraform, you can create an AWS EC2 instance with the following steps:

1. Write the Terraform configuration file defining the EC2 resource.
2. Initialize the project with `terraform init`.
3. Check the plan with `terraform plan`.
4. Apply the configuration using `terraform apply` to create the EC2 instance.
5. Destroy the instance using `terraform destroy` when no longer needed.
