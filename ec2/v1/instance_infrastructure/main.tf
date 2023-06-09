terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      "proton:environment"      = var.environment.name,
      "proton:service"          = var.service.name,
      "proton:service_instance" = var.service_instance.name,
    }
  }
}

module "ec2" {
  source = "./src"
}
