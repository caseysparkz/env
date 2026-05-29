################################################################################
# Main
#
# Author:       Casey Sparks
# Date:         DATE
# Description:  x

locals {
  prefix = random_pet.prefix.id
  common_tags = {
    # TODO
    terraform = true
  }
}

# Data =========================================================================

# Resources ====================================================================
resource "random_pet" "prefix" {
  #keepers = []  # TODO
}

# Outputs ======================================================================
