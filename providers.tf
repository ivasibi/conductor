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
  endpoint = var.proxmoxve_endpoint
  insecure = true
  username = var.proxmoxve_username
  password = var.proxmoxve_password
}