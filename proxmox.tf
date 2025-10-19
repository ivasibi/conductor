resource "proxmox_virtual_environment_download_file" "fedora" {
  node_name          = var.pve_node
  datastore_id       = var.pve_import
  content_type       = "import"
  url                = "https://download.fedoraproject.org/pub/fedora/linux/releases/42/Cloud/x86_64/images/Fedora-Cloud-Base-Generic-42-1.1.x86_64.qcow2"
  file_name          = "Fedora-Cloud-Base-Generic-42-1.1.x86_64.qcow2"
  checksum           = "e401a4db2e5e04d1967b6729774faa96da629bcf3ba90b67d8d9cce9906bec0f"
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