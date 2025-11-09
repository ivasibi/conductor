terraform {
  required_version = "= 1.13.3"
  required_providers {
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