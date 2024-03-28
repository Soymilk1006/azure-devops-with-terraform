terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.97.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "2.47.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-storage-rg1"
    storage_account_name = "terraformdevon1006"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "azuread" {
  tenant_id = "4b90474a-4233-42db-8f75-f8ac9b75e7dc"
}


resource "random_pet" "aksrandom" {

}
