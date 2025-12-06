variable "pve1_endpoint" {
  description = "Proxmox VE (pve1) Endpoint"
  type        = string
  default     = "https://192.168.1.4:8006"
}

variable "pve1_username" {
  description = "Proxmox VE (pve1) Username"
  type        = string
  default     = "root@pam"
}

variable "pve1_password" {
  description = "Proxmox VE (pve1) Password"
  type        = string
  sensitive   = true
}

variable "master1_cpu" {
  description = "Kubernetes Master (master1) CPU"
  type        = number
  default     = 1
}

variable "master1_ram" {
  description = "Kubernetes Master (master1) RAM"
  type        = number
  default     = 2048
}

variable "master1_disk" {
  description = "Kubernetes Master (master1) Disk"
  type        = number
  default     = 32
}