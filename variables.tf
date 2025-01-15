variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
  description = "Tags used for the deployment"
  default = {
    "Environment" = "Dev"
    "owner" = "Mahes"
  }
}
#TFstate Details
variable "bkstrgrg" {
  type = string
}
variable "bkstrg" {
  type = string
}
variable "bkcontainer" {
  type = string
}
variable "bkstrgkey" {
  type = string
}

variable "vnet_name" {
  type = string

}
variable "vnet_address_space" {
  type = list(any)
  default = ["10.13.0.0/16"]
}
variable "subnets" {
  type = map(any)
  default = {
    subnet_1 {
        name : "subnet_1"
        address_prefixes = ["10.13.1.0/32"]
    }
    subnet_2 {
        name = " subnet_2"
        address_prefixes = ["10.13.2.0/32"]
    }
    subnet_3 {
        name = " subnet_3"
        address_prefixes = ["10.13.3.0/32"]
    }
    # The name must be AzureBastionSubnet
    bastion_subnet = {
      name             = "AzureBastionSubnet"
      address_prefixes = ["10.13.250.0/24"]
    }
  }
}
variable "bastionhost_name" {
  type        = string
  description = "The name of the basion host"
  default     = "<bastion host name>"
}
