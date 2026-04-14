output "aks_name" {
  value       = azurerm_kubernetes_cluster.this.name
  description = "AKS cluster name"
}

output "aks_id" {
  value       = azurerm_kubernetes_cluster.this.id
  description = "AKS cluster resource ID"
}

output "node_resource_group" {
  value       = azurerm_kubernetes_cluster.this.node_resource_group
  description = "AKS-managed node resource group"
}
