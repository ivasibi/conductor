variable "pve1_template" {
  description = "Proxmox VE (pve1) Template"
  type        = number
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