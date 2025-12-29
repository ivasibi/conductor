variable "network_mask" {
  description = "Network Mask"
  type        = string
}

variable "network_ssh" {
  description = "Network SSH"
  type        = string
}

variable "gateway_address" {
  description = "Gateway Address"
  type        = string
}

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
  sensitive   = true
}

variable "master1_address" {
  description = "Kubernetes Master (master1) Address"
  type        = string
}

variable "master1_username" {
  description = "Kubernetes Master (master1) Username"
  type        = string
}

variable "master1_password" {
  description = "Kubernetes Master (master1) Password"
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