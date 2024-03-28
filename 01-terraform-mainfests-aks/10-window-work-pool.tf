resource "azurerm_kubernetes_cluster_node_pool" "window101" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
  enable_auto_scaling   = true
  node_count            = 1
  max_count             = 2
  min_count             = 1
  mode                  = "User"
  name                  = "win101"
  orchestrator_version  = data.azurerm_kubernetes_service_versions.current.latest_version
  os_disk_size_gb       = 35
  os_type               = "Windows"
  vm_size               = "Standard_DS2_v2"
  vnet_subnet_id        = azurerm_subnet.aks-default.id
  priority              = "Spot"
  node_labels = {
    "nodepool-type" = "user"
    "environment"   = var.environment
    "nodepools"     = "windows"
    "app"           = "java-apps"
  }

  tags = {
    "nodepool-type" = "user"
    "environment"   = var.environment
    "nodepools"     = "windows"
    "app"           = "dotnet-apps"
  }

}
