terraform {
  required_providers {
    aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "1.8.0"  # or latest stable version
    }
  }

  backend "remote" {
    organization = "linn8888"

    workspaces {
      name = "ace-iac-day-two"
    }
  }
}

provider "aviatrix" {
  username = var.aviatrix_username
  password = var.aviatrix_password
  controller_ip = var.aviatrix_controller_ip
  customer_name = var.account_name
}
