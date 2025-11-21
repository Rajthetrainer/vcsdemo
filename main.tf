terraform {
  cloud {
    organization = "Demo-Raj-Organization"

    workspaces {
      name = "demo-s3-workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket = "raj-demo-bucket-${random_id.suffix.hex}"
}

