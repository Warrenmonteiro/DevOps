output "hello_world" {
  value = "Hello, World!"
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "aks_name" {
  value = module.aks.aks_name
}

output "aks_id" {
  value = module.aks.aks_id
}

output "aks_node_resource_group" {
  value = module.aks.node_resource_group
}
