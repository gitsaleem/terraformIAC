
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a new resource group
resource "azurerm_resource_group" "example_rg" {
  name     = "exampleResourceGroup"
  location = "East US"
}

# Create an Azure Storage Account within the resource group
resource "azurerm_storage_account" "example_sa" {
  name                     = "examplestorageaccount"
  resource_group_name      = azurerm_resource_group.example_rg.name
  location                 = azurerm_resource_group.example_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
