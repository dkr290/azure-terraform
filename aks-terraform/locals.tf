locals {
   default_nodepool_node_labels = {
      "nodepool-type" = "default"
      "environment"   = "dev"
      "nodepoolos"    = "linux"
      "app"           = "default-apps"
      "astronomer"    = "true"
    }

  node_pools ={
    astronomer = {
      name = "astronomer"
      max_nodes = 3
      min_nodes = 1
      kubernetes_version = "1.21.9"
      node_labels = {
       "nodepool-type" = "astronomer"
       "environment"   = "dev"
       "nodepoolos"    = "linux"
       "app"           = "astronomer"
       "astronomer"    = "true"
    }
     # if we want to taint the pool, if not just remove the value
     #node_taints = ["key=value:NoSchedule"]
 
   }

   astropool224 = {
      name = "astropool224"
      max_nodes = 3
      min_nodes = 1
      kubernetes_version = "1.22.4"
      node_labels = {
       "nodepool-type" = "astronomer2204"
       "environment"   = "dev"
       "nodepoolos"    = "linux"
       "app"           = "astronomer"
       "astronomer"    = "true"
    }
     # if we want to taint the pool, if not just remove the value
     #node_taints = ["key=value:NoSchedule"]
 
   }

  #  test = {
  #     name = "test"
  #     max_nodes = 3
  #     min_nodes = 1
  #     node_labels = {
  #      "nodepool-type" = "test"
  #      "environment"   = "dev"
  #      "nodepoolos"    = "linux"
  #      "app"           = "test"
       
  #   }
  #    # if we want to taint the pool, if not just remove the value
  #    #node_taints = ["key=value:NoSchedule"]
 
  #  }
  }

 

  
   


  technical_owner = var.technical_owner
  environment = var.environment
  application = var.application
  current_date= formatdate("DD MMM YYYY hh:mm ZZZ", timestamp()) 
 

  
  common_tags = {
    "Technical Owner"  =   local.technical_owner
    "Environment" =        local.environment
    "Created By"        = "Terraform Pipeline"
    "Application"       =  local.application
    "Creation Date"     =  local.current_date
    }
}
