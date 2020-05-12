provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "rg" {
  location = var.location
  name = "${var.project}-resource-group"

  tags = merge(local.common_tags, {
    Name = "${var.project}-resource-group"
  })
}

resource "azurerm_virtual_network" "main" {

  address_space = ["10.0.0.0/16"]
  location = var.location
  name = "${var.project}-virtual-network"
  resource_group_name = azurerm_resource_group.rg.name


  tags = merge(local.common_tags, {
    Name = "${var.project}-virtual-network"
  })
}
