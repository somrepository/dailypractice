terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
  # backend "azurerm" {

  # }
}

provider "azurerm" {
  features {

  }

  subscription_id = "7bee76ec-d512-4daa-8802-5d77f0e26fda"

}