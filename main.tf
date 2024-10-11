terraform {
 required_providers {
 azurerm = {
 source = "hashicorp/azurerm"
 version = "~> 3.0"
 }
 }
}
provider "azurerm" {
 features {}
}
resource "azurerm_resource_group" "example" {
 name = "rg-${terraform.workspace}"
 location = var.location
}
