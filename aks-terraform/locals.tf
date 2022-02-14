locals {
   node_labels = {
      "nodepool-type" = "default"
      "environment"   = "dev"
      "nodepoolos"    = "linux"
      "app"           = "default-apps"
      "astronomer"    = "true"
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
