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
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
```

