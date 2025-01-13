provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48"
    }
  }

  backend "s3" {
    key    = "estado/terraformSQS.tfstate"
    region = var.region
  }

}
