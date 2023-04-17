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
      "proton:environment" = var.environment.name
    }
  }
}

module "vpc_subnet" {
  source = "./src"
  name                    = var.environment.name
}
