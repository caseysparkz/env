###############################################################################
# Terraform and Providers
#

## Terraform ==================================================================
terraform {
  required_version = "~> 1.13.3"

  required_providers {
    /*
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.18.0"
    }
    */
  }

  /*
  backend "s3" {
    bucket  = "TODO"
    key     = "TODO"
    region  = "TODO"
    encrypt = true
    use_lockfile = true
  }
  */
}

## Providers ==================================================================
