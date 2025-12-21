variable "pve1_endpoint" {
  description = "Proxmox VE (pve1) Endpoint"
  type        = string
}

variable "pve1_username" {
  description = "Proxmox VE (pve1) Username"
  type        = string
}

variable "pve1_password" {
  description = "Proxmox VE (pve1) Password"
  type        = string
}

variable "master1_cpu" {
  description = "Kubernetes Master (master1) CPU"
  type        = number
}

variable "master1_ram" {
  description = "Kubernetes Master (master1) RAM"
  type        = number
}

variable "master1_disk" {
  description = "Kubernetes Master (master1) Disk"
  type        = number
}