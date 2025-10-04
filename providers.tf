terraform {
  required_version = "= 1.13.3"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "= 0.84.1"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_endpoint
  insecure = true
  username = var.proxmox_username
  password = var.proxmox_password
}