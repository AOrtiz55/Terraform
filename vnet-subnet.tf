#virtual network
resource "azurerm_virtual_network" "myterraformnetwork"{
    location = var.location
    address_space = ["10.0.0.0/16"]
    resource_group_name = azurerm_resource_group.myTerraformGroup.name
    name = var.vnetname
    tags = var.tags
}

resource "azurerem_subnet" "myterraformsubnet"{
    name = var.subnetname
    resource_group_name = azurerm_resource_group.myTerraformGroup.name  
    virtual_network_name = azurerm_virtual_network.myterraformnetwork
    address_prefix = ["10.0.2.0/24"]

    tags = var.tags
    
}