resource "proxmox_virtual_environment_download_file" "pve1_image" {
  node_name          = "pve1"
  datastore_id       = "local"
  content_type       = "import"
  url                = "https://download.fedoraproject.org/pub/fedora/linux/releases/43/Cloud/x86_64/images/Fedora-Cloud-Base-Generic-43-1.6.x86_64.qcow2"
  file_name          = "Fedora-Cloud-Base-Generic-43-1.6.x86_64.qcow2"
  checksum           = "846574c8a97cd2d8dc1f231062d73107cc85cbbbda56335e264a46e3a6c8ab2f"
  checksum_algorithm = "sha256"
  upload_timeout     = 1800
}

resource "proxmox_virtual_environment_vm" "pve1_template" {
  node_name = "pve1"
  name      = "template"
  vm_id     = 901
  template  = true
  started   = false

  disk {
    import_from  = proxmox_virtual_environment_download_file.pve1_image.id
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 8
  }
}

module "kubernetes" {
  source = "./modules/kubernetes"

  pve1_template = proxmox_virtual_environment_vm.pve1_template.id

  master1_cpu = var.master1_cpu
}