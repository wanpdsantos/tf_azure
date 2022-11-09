terraform {
  backend "remote" {
    organization = "bookyz"

    workspaces {
      name = "azure-bookyz-stage"
    }
  }
}
