# AWS
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3" {
  bucket = "bucket-task-7"
}

# GCP
provider "google" {
  project = "the-discipline-407416"
  region  = "asia-south1"  
}

resource "google_storage_bucket" "bucket" {
  name     = "bucket7sree"
  location = "asia-south1" 
}

#Azure
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "East US"
}

resource "azurerm_storage_account" "example" {
  name                     = "bucket7sree"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = "bucket7sree"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"  
}