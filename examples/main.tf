

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

  service_principal_id = "3d5c1675-fff2-49e5-b2eb-b6eff382926d"
  display_name         = "My sp password"

  # One may set an exact end date for the password using:
  # end_date = "2023-01-01T01:02:03Z"

  # One may use a relative end date using:
  end_date_relative = "240h"

  # Force re-creation of the password when a key value changes, for example when a time index expires
  # rotate_when_changed = {
  #   rotation = time_rotating.rotate.id
  # }

  # One may choose a start date for the password using:
  # start_date = "2023-01-01T01:02:03Z"


}