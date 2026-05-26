################################################################################
# Terraform and Providers
#

locals {
  # cloudflare_zone_id = data.cloudflare_zone.root.result[0].id
}

# Terraform ====================================================================
terraform {
  required_version = "~> 1.13.3"

  required_providers {
    random = {
      source = "hashicorp/random"
      version = "~> 3.7.2"
    }
    /*
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.18.0"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 5.12.0"
    }
    */
  }

  /*
  backend "s3" {
    bucket  = ""  # TODO
    key     = ""  # TODO
    region  = ""  # TODO
    encrypt = true
    use_lockfile = true
  }
  */
}

# Data =========================================================================
/*
data "aws_caller_identity" "current" {}

data "cloudflare_zone" "root" { name = var.root_domain }
*/

# Providers ====================================================================
/*
provider "aws" {
  region = var.aws_region

  default_tags { tags = local.common_tags }
}

provider "cloudflare" {}
*/
