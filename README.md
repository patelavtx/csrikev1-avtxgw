# CSR-AVTX-ikev1

- Deploys Avtx Transit + CSR and makes S2C connection with BGPoIPSEC


## Architecture
TBD
```
mc-transit (with bgpolan interface)  -> <BGPoIPSEC>  -> CSR 
```


## Example of using as module.

```

module "csr-ikev1" {
  source = "github.com/patelavtx/csrikev1-avtxgw"
  account = "AZ-proj"
  cloud = "Azure"
  localasn = "65112"
  cidr = "10.112.28.0/23"
  region = "West Europe"
}

```


## VARIABLES



Suggested variables to set.  Most mc-transit variables for transit gateway can be set.

| Key            | Default       | Description               |
| ------------- |:-------------:| --------------------------:|
| csr_rg_name    | atulrg-csrike1 |  optional         |
| csr_rg_location| UK South      |  optional          |
| csr_name       | csr-ike1      |  optional          |
| csr_vnet_address_space | 10.214.32.0/24 | optionsal |
| csr_public_subnet_address_space | 10.214.32.0/25 | optional |
| csr_private_subnet_address_space | 10.214.32.128/2 | optional |
| csr_asn      | 65214 | optional |
| admin_username | admin  | opt |
| admin_password | Aviatrix123#  | opt |
| ipsec_psk | Aviatrix123# | opt |
| account |    |  mandatory |
| cloud |     |  set to Azure module only for Azure deployment |
| cidr |      |  mandatory ;  set transit gw vne cidr |
| region | UK South |  optional  |
| localasn |        |  mandatory - set value |
| 


### Example of TFVARS

```
controller_ip = ""
ctrl_password = ""
account       = ""
cloud         = "Azure"
cidr          = "10.111.28.0/23"
region        = "West Europe"
rg            = "atulrg-tx111"             # specify existing RG
localasn      = "65111"
tags = {
  ProjectName        = "test-csr-ipsec"
  BusinessOwnerEmail = ""
}
```


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


