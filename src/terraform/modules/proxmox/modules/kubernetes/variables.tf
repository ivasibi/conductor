variable "network_mask" {
  description = "Network Mask"
  type        = string
}

variable "gateway_address" {
  description = "Gateway Address"
  type        = string
}

variable "pve1_template" {
  description = "Proxmox VE (pve1) Template"
  type        = number
}

variable "master1_address" {
  description = "Kubernetes Master (master1) Address"
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