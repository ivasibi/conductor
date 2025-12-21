terraform {
  required_providers {
    netbox = {
      source = "e-breuninger/netbox"
    }
    proxmox = {
      source  = "bpg/proxmox"
      version = "= 0.86.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.pve1_endpoint
  insecure = true
  username = var.pve1_username
  password = var.pve1_password
}