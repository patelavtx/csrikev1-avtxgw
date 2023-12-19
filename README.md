# CSR-AVTX-ikev1

- Deploys Avtx Transit + CSR and makes S2C connection with BGPoIPSEC


## Architecture
TBD
```
mc-transit <BGPoIPSEC>  CSR 
```


## Example of using as module.




## Validated environment
```
Terraform v1.3.7
on linux_amd64
+ provider registry.terraform.io/hashicorp/azurerm v3.0.0
+ provider registry.terraform.io/hashicorp/http v3.2.1
+ provider registry.terraform.io/hashicorp/random v3.4.3
```

## providers.tf
```
terraform {
  required_providers {
    aviatrix = {
      source = "aviatrixsystems/aviatrix"
      version = "~> 3.1.0"
    }
    azurerm = {
      source = "hashicorp/azurerm"
      #version = ">= 3.15.0"
    }
  }
}


# Configure Aviatrix and Azure provider
provider "aviatrix" {
  controller_ip           = var.controller_ip
  username                = "admin"
  password                = var.ctrl_password

}

provider "azurerm" {
    features {}
}
```


