resource "azurerm_kubernetes_cluster" "this" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.aks_name
  oidc_issuer_enabled = true

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name           = "system"
    vm_size        = var.system_node_vm_size
    node_count     = var.system_node_count
    vnet_subnet_id = var.subnet_id
  }

  network_profile {
    network_plugin = "azure"

    service_cidr   = "10.2.0.0/16"
    dns_service_ip = "10.2.0.10"
  }
}
