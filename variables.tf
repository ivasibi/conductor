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