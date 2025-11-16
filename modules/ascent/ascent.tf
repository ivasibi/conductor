resource "proxmox_virtual_environment_vm" "ascent1" {
  node_name = "pve1"
  name      = "ascent1"
  vm_id     = 101
  tags      = ["conductor", "ascent"]

  clone {
    vm_id = var.pve1_template
  }

  cpu {
    cores = 2
    type  = "host"
  }

  memory {
    dedicated = 2048
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 16
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi1"
    size         = 32
  }

  network_device {
    bridge = "vmbr0"
  }
}