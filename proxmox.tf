resource "proxmox_virtual_environment_download_file" "fedora" {
  node_name          = "proxmox"
  datastore_id       = "local"
  content_type       = "import"
  url                = "https://download.fedoraproject.org/pub/fedora/linux/releases/42/Cloud/x86_64/images/Fedora-Cloud-Base-Generic-42-1.1.x86_64.qcow2"
  file_name          = "Fedora-Cloud-Base-Generic-42-1.1.x86_64.qcow2"
  checksum           = "e401a4db2e5e04d1967b6729774faa96da629bcf3ba90b67d8d9cce9906bec0f"
  checksum_algorithm = "sha256"
}