variable "resource_group_name" {
  type        = string
  description = "Resource group where AKS will be created"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "subnet_id" {
  type        = string
  description = "Existing subnet ID for AKS nodes (Azure CNI)"
}

variable "aks_name" {
  type        = string
  description = "AKS cluster name"
}

variable "kubernetes_version" {
  type        = string
  description = "Optional Kubernetes Version"
}

variable "system_node_count" {
  type        = number
  description = "System node pool node count (minimal sizing)"
  default     = 1
}

variable "system_node_vm_size" {
  type        = string
  description = "System node pool VM size (cost-aware)"
  default     = "Standard_B2s_v2"
}