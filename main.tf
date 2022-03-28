# The configuration for the `remote` backend.
terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "k8s-on-eks"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "k8s-on-eks"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}

variable "region" {
  default     = "ap-south-1"
  description = "AWS region"
}

provider "aws" {
  region = var.region
}
