terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    organization = "LINN8888"
    workspaces {
      name = "ace-iac-day-two"
    }
  }
}
