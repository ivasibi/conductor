variable "pve_endpoint" {
  description = "Proxmox VE Endpoint"
  type        = string
  default     = "https://192.168.1.200:8006"
}

variable "pve_username" {
  description = "Proxmox VE Username"
  type        = string
  default     = "root@pam"
}

variable "pve_password" {
  description = "Proxmox VE Password"
  type        = string
  sensitive   = true
}

variable "pve_node" {
  description = "Proxmox VE Node"
  type = string
  default = "pve"
}

variable "pve_import" {
  description = "Proxmox VE Import"
  type = string
  default = "local"
}

variable "pve_disk" {
  description = "Proxmox VE Disk"
  type = string
  default = "local-lvm"
}

variable "pve_timeout" {
  description = "Proxmox VE Timeout"
  type = number
  default = 600
}