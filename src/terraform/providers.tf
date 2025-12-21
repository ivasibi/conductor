terraform {
  required_version = "= 1.13.3"
  required_providers {
    netbox = {
      source  = "e-breuninger/netbox"
      version = "= 5.0.0"
    }
  }
}

provider "netbox" {
  server_url = var.netbox_endpoint
  api_token  = var.netbox_token
}