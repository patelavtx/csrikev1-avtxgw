
# https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-transit/aviatrix/latest

# Step1 - deploy transit
module "mc-transit" {
  source  = "terraform-aviatrix-modules/mc-transit/aviatrix"
  version = "2.5.1"
  cloud = "Azure"        
  cidr = var.cidr
  region = var.region
  account = var.account
  # resource_group = var.rg            # rm for GH sourced module
  local_as_number = var.localasn
  insane_mode = "true"
  name = "aztransit111-weu"
  enable_advertise_transit_cidr = "true"
  enable_segmentation    = "true"
  tags  =  var.tags
}




