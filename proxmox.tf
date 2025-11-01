resource "proxmox_virtual_environment_download_file" "fedora" {
  node_name          = var.pve_node
  datastore_id       = var.pve_import
  content_type       = "import"
  url                = "https://download.fedoraproject.org/pub/fedora/linux/releases/43/Cloud/x86_64/images/Fedora-Cloud-Base-Generic-43-1.6.x86_64.qcow2"
  file_name          = "Fedora-Cloud-Base-Generic-43-1.6.x86_64.qcow2"
  checksum           = "846574c8a97cd2d8dc1f231062d73107cc85cbbbda56335e264a46e3a6c8ab2f"
  checksum_algorithm = "sha256"
  upload_timeout     = var.pve_timeout
}

resource "proxmox_virtual_environment_vm" "template" {
  node_name = var.pve_node
  name      = "template"
  vm_id     = 900
  tags      = ["terraform"]
  template  = true
  started   = false

  disk {
    import_from  = proxmox_virtual_environment_download_file.fedora.id
    datastore_id = var.pve_disk
    interface    = "scsi0"
    size         = 8
  }
}