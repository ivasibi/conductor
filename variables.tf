variable "proxmox_endpoint" {
  description = "Proxmox Endpoint"
  type = string
  default = "https://192.168.1.200:8006"
}

variable "proxmox_username" {
  description = "Proxmox Username"
  type = string
  default = "root@pam"
}

variable "proxmox_password" {
  description = "Proxmox Password"
  type = string
  sensitive = true
}