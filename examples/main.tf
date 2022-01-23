

module "azure_ad_service_principal" {

  source = "Pujago/azure_ad_service_principal/azurerm"
  # Mandatory arguments
  application_id = "676510e4-807b-4ae4-887f-e31a023db05b"

  # Optional arguments
  account_enabled              = var.account_enabled
  alternative_names            = var.alternative_names
  app_role_assignment_required = false

  owners = [data.azuread_client_config.current.object_id]

  feature_tags = {
    enterprise = true
    gallery    = true
  }

}