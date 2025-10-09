variable "proxmoxve_endpoint" {
  description = "Proxmox VE Endpoint"
  type        = string
  default     = "https://192.168.1.200:8006"
}

variable "proxmoxve_username" {
  description = "Proxmox VE Username"
  type        = string
  default     = "root@pam"
}

variable "proxmoxve_password" {
  description = "Proxmox VE Password"
  type        = string
  sensitive   = true
}

variable "proxmoxve_node_name" {
  description = "Proxmox VE Node Name"
  type = string
  default = "proxmoxve"
}

variable "proxmoxve_import_datastore" {
  description = "Proxmox VE Import Datastore"
  type = string
  default = "local"
}

variable "proxmoxve_timeout" {
  description = "Proxmox VE Timeout"
  type = number
  default = 600
}