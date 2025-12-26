resource "proxmox_virtual_environment_file" "master1_network" {
  node_name    = "pve1"
  datastore_id = "local"
  content_type = "snippets"

  source_raw {
    file_name = "master1_network.yml"
    data = templatefile("./templates/network.tftpl", {
      network_mask    = var.network_mask
      gateway_address = var.gateway_address
      address         = var.master1_address
    })
  }
}

resource "proxmox_virtual_environment_file" "master1_user" {
  node_name    = "pve1"
  datastore_id = "local"
  content_type = "snippets"

  source_raw {
    file_name = "master1_user.yml"
    data = templatefile("./templates/user.tftpl", {
      network_ssh = var.network_ssh
      hostname    = "master1"
      username    = var.master1_username
      password    = var.master1_password
    })
  }
}

resource "proxmox_virtual_environment_vm" "master1" {
  node_name = "pve1"
  name      = "master1"
  vm_id     = 101
  tags      = ["kubernetes"]

  clone {
    vm_id = var.pve1_template
  }

  initialization {
    network_data_file_id = proxmox_virtual_environment_file.master1_network.id
    user_data_file_id    = proxmox_virtual_environment_file.master1_user.id
  }

  cpu {
    cores = var.master1_cpu
    type  = "host"
  }

  memory {
    dedicated = var.master1_ram
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = var.master1_disk
  }

  network_device {
    bridge = "vmbr0"
  }
}