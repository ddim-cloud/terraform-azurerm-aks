variable "name" {
  type        = string
  description = "Name suffix for resources (e.g. aks-<name>)"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to create resources in"
}

variable "subnet_id" {
  type        = string
  description = "ID of the node subnet"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version (e.g. 1.33). null uses the AKS default"
  default     = null
}

variable "node_vm_size" {
  type        = string
  description = "Node VM size (change rotates the node pool)"
  default     = "Standard_D2s_v5"
}

variable "node_min_count" {
  type        = number
  description = "Minimum node count for the autoscaler"
  default     = 2
}

variable "node_max_count" {
  type        = number
  description = "Maximum node count for the autoscaler"
  default     = 3
}

variable "zones" {
  type        = list(string)
  description = "Availability zones to spread nodes across"
  default     = ["1", "2", "3"]
}

variable "pod_cidr" {
  type        = string
  description = "Pod CIDR (must not overlap the VNet)"
  default     = "192.168.0.0/16"
}

variable "service_cidr" {
  type        = string
  description = "Kubernetes service CIDR (must not overlap the VNet or pod CIDR)"
  default     = "172.16.0.0/16"
}

variable "authorized_ip_ranges" {
  type        = list(string)
  description = "CIDRs allowed to access the API server (where kubectl runs)"
}

variable "tags" {
  type        = map(string)
  description = "Common tags"
  default     = {}
}
