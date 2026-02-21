locals {
  manufacturers = toset([
    var.gateway_manufacturer,
    var.pve1_manufacturer
  ])
  devices = {
    "${var.gateway_manufacturer}::${var.gateway_model}" = {
      manufacturer = var.gateway_manufacturer
      model        = var.gateway_model
    }
    "${var.pve1_manufacturer}::${var.pve1_model}" = {
      manufacturer = var.pve1_manufacturer
      model        = var.pve1_model
    }
  }
}

resource "netbox_site" "location" {
  name = var.network_location
}

resource "netbox_manufacturer" "manufacturers" {
  for_each = local.manufacturers
  name     = each.value
}

resource "netbox_device_type" "models" {
  for_each        = local.devices
  manufacturer_id = netbox_manufacturer.manufacturers[each.value.manufacturer].id
  model           = each.value.model
}

module "proxmox" {
  source = "./modules/proxmox"

  network_mask = var.network_mask
  network_ssh  = var.network_ssh

  gateway_address = var.gateway_address

  pve1_endpoint = var.pve1_endpoint
  pve1_username = var.pve1_username
  pve1_password = var.pve1_password

  master1_address  = var.master1_address
  master1_username = var.master1_username
  master1_password = var.master1_password
  master1_cpu      = var.master1_cpu
  master1_ram      = var.master1_ram
  master1_disk     = var.master1_disk
}