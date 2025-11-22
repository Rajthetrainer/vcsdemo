terraform {
  cloud {
    organization = "Demo-Raj-Organization"

    workspaces {
      name = "demo-s3-workspace"
    }
  }

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "local" {}

resource "local_file" "demo_file" {
  filename = "output1.txt"
  content  = "This file was created by Terraform Cloud via VCS mode!"
}

