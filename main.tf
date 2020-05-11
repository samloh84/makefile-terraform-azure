provider "azurerm" {
subscription_id = ""
  features {

  }
}

resource "azurerm_resource_group" "rg" {
  location = ""
  name = ""
}

resource "azurerm_virtual_network" "main" {

  address_space = []
  location = ""
  name = ""
  resource_group_name = ""
}

