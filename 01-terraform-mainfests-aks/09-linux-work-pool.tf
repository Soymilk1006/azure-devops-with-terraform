resource "azurerm_kubernetes_cluster_node_pool" "linux101" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
  enable_auto_scaling   = true
  node_count            = 1
  max_count             = 2
  min_count             = 1
  mode                  = "User"
  name                  = "linux101"
  orchestrator_version  = data.azurerm_kubernetes_service_versions.current.latest_version
  os_type               = "Linux"
  vm_size               = "standard_d2ds_v4"
  vnet_subnet_id        = azurerm_subnet.aks-default.id
  priority              = "Regular"
  node_labels = {
    "nodepool-type" = "user"
    "environment"   = var.environment
    "nodepools"     = "linux"
    "app"           = "java-apps"
  }

  tags = {
    "nodepool-type" = "user"
    "environment"   = var.environment
    "nodepools"     = "linux"
    "app"           = "java-apps"
  }

}
