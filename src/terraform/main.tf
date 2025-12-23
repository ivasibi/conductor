module "proxmox" {
  source = "./modules/proxmox"

  network_mask = var.network_mask

  gateway_address = var.gateway_address

  pve1_endpoint = var.pve1_endpoint
  pve1_username = var.pve1_username
  pve1_password = var.pve1_password

  master1_address = var.master1_address
  master1_cpu     = var.master1_cpu
  master1_ram     = var.master1_ram
  master1_disk    = var.master1_disk
}