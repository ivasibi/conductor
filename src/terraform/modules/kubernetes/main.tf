resource "proxmox_virtual_environment_vm" "master1" {
  node_name = "pve1"
  name      = "master1"
  vm_id     = 101
  tags      = ["kubernetes"]

  clone {
    vm_id = var.pve1_template
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
    size         = 32
  }

  network_device {
    bridge = "vmbr0"
  }
}