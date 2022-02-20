# many examples for separate nodepools for future use


#  resource "azurerm_kubernetes_cluster_node_pool" "pool1" {
#    #availability_zones    = [1, 2, 3]
#   enable_auto_scaling   = true
#   kubernetes_cluster_id = module.aks_cluster.id
#   max_count             = 3
#   min_count             = 1
#   mode                  = "User"
#   name                  = "aapool"
#   orchestrator_version  = var.kubernetes_version
#   os_disk_size_gb       = 30
#   os_type               = "Linux" # Default is Linux, we can change to Windows
#    vm_size               = "Standard_B2s"
#    priority              = "Regular"  # Default is Regular, we can change to Spot with additional settings like eviction_policy, spot_max_price, node_labels and node_taints
#   vnet_subnet_id        = azurerm_subnet.aks_subnet.id #optional we can force this nodepool to go to another dedicated network
#  node_labels = {
#      "nodepool-type" = "user"
#     "environment"   = "dev"
#    "nodepoolos"    = "linux"
#     "app"           = "special-apps"
#    }
#   tags = {
#      "nodepool-type" = "user"
#     "environment"   = "dev"
#     "nodepoolos"    = "linux"
#    "app"           = "special-apps"
#    }
# }


# Create Windows Azure AKS Node Pool
# resource "azurerm_kubernetes_cluster_node_pool" "winpool" {
#   #availability_zones    = [1, 2, 3]
#   enable_auto_scaling   = true
#   kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
#   max_count             = 3
#   min_count             = 1
#   mode                  = "User"
#   name                  = "winpl"
#   orchestrator_version  = data.azurerm_kubernetes_service_versions.current.latest_version
#   os_disk_size_gb       = 30
#   os_type               = "Windows" # Default is Linux, we can change to Windows
#   vm_size               = "Standard_D2_v2"
#   priority              = "Regular"  # Default is Regular, we can change to Spot with additional settings like eviction_policy, spot_max_price, node_labels and node_taints
#   node_labels = {
#     "nodepool-type" = "user"
#     "environment"   = "dev"
#     "nodepoolos"    = "windows"
#     "app"           = "dotnet-apps"
#   }
#   tags = {
#     "nodepool-type" = "user"
#     "environment"   = "dev"
#     "nodepoolos"    = "windows"
#     "app"           = "dotnet-apps"
#   }
# }
