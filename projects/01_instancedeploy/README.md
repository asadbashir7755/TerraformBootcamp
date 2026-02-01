# Terraform EC2 Project

## 📌 Project Overview

This project demonstrates how to provision an **AWS EC2 instance using Terraform** while following **real-world best practices**.

Instead of hardcoding AMI IDs, the project uses the **`aws_ami` data source** to dynamically fetch the latest operating system image. This approach ensures:

* Better portability across regions
* Easier maintenance
* Reduced risk of using outdated AMIs

Through this project, the complete **Terraform lifecycle** is practiced: initialization, planning, applying, and destroying infrastructure.

---

## 🛠️ Key Concepts Covered

* Infrastructure as Code (IaC)
* Terraform workflow (init → plan → apply → destroy)
* Dynamic AMI selection using `aws_ami` data source
* EC2 provisioning on AWS
* Terraform variables (input & output)

---

## 🔄 Terraform Lifecycle Commands Used

### Initialize the project

```bash
terraform init
```

Initializes the Terraform working directory and downloads required provider plugins.

### Preview the execution plan

```bash
terraform plan
```

Shows what Terraform will create, update, or destroy before making any changes.

### Apply the configuration

```bash
terraform apply
```

Creates the EC2 instance and related resources on AWS.

### Preview resource destruction

```bash
terraform plan -destroy aws_instance.example
```

Displays what will be destroyed before removing the infrastructure.

### Destroy the infrastructure

```bash
terraform destroy aws_instance.example
```

Removes the EC2 instance and cleans up AWS resources.

---

## ☁️ AWS EC2 Provisioning

* An EC2 instance is created using Terraform
* AMI is fetched dynamically using `aws_ami` data source
* AWS provider is configured with variables

This approach follows **industry-standard Terraform practices** used in DevOps environments.

---

## 🔧 Terraform Variables

### 1️⃣ Input Variables

Used to pass values into Terraform configurations, such as:

* AWS region
* Instance type
* Key pair name

These make the configuration reusable and flexible.

### 2️⃣ Output Variables

Used to display important information after resource creation, such as:

* EC2 public IP
* EC2 instance ID

Outputs help in debugging and integrating Terraform with other tools.

---

## ✅ Learning Outcome

By completing this project, the following were clearly understood:

* How Terraform manages infrastructure lifecycle
* How to safely create and destroy AWS resources
* Why dynamic AMI selection is preferred over hardcoding
* How variables improve modularity and reusability

This project reflects **real-world DevOps practices** for managing cloud infrastructure using Terraform.

---

