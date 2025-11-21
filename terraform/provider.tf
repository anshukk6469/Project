terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.52.0"
    }
    template = {
      source = "hashicorp/template"
      version = "2.2.0"
    }
    local = {
      source = "hashicorp/local"
      version = "2.6.1"
    }
  }
}


provider "azurerm" {
 features {
 }
}

provider "template" {
  # Configuration options
}

provider "local" {
  # Configuration options
}