module "aks" {
  source = "./modules/aks"

  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  subnet_id           = azurerm_subnet.subnet.id

  aks_name = "alz-dev-aks"

  kubernetes_version = null

  system_node_count   = 1
  system_node_vm_size = "Standard_B2s_v2"
}
