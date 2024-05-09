terraform {
#  cloud {                             # remove cloud block if you want are not using TFC or TFE
#    organization = "vishnu-test-org"  # replace with your TFC/E organization name
#    hostname     = "app.terraform.io" # replace with if you are using TFE

#    workspaces {
#      project = "Kubernetes Testing" # update project name if necessary
#      tags    = ["eks-cluster"]      # update tags if necessary
#    }
#  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.4"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.30.0"
    }
  }

  required_version = "~> 1.8"
}
