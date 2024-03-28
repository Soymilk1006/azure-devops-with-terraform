resource "azuread_group" "aks_administrators" {

  display_name     = "${azurerm_resource_group.aks_rg.name}-${var.environment}-administrators"
  security_enabled = true
  description      = "Azure AKS Kubernetes administrator for the ${azurerm_resource_group.aks_rg.name}-cluster"

}
