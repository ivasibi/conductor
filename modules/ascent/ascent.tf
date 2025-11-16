resource "proxmox_virtual_environment_vm" "ascent1_clone" {
  node_name = "pve1"
  name      = "ascent1"
  vm_id     = 101
  tags      = ["terraform", "ascent"]

  clone {
    vm_id = var.pve1_template
  }

  network_device {
    bridge = "vmbr0"
  }
}