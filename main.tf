## Configure the Microsoft Azure Provider
## <https://www.terraform.io/docs/providers/azurerm/index.html>
terraform {
  backend "remote"   {
	  organization = "SapphireHealth"
	  
	  workspaces {
		  name = "LCMC_NonPrd"
	  }
	  
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
  
}
