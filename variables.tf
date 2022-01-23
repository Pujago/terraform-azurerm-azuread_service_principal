# azure ad service principal

#Mandatory arguments 

variable "application_id" {
  description = "The application ID (client ID) of the application for which to create a service principal."
  type        = string
}

# Optional arguments

variable "account_enabled" {
  description = "Whether or not the service principal account is enabled."
  type        = bool
  default     = true
}

variable "alternative_names" {
  description = "A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities."
  type        = list(string)
  default     = []
}
variable "app_role_assignment_required" {
  description = "Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to false."
  type        = bool
  default     = false
}


variable "description" {
  description = "A description of the service principal provided for internal end-users."
  type        = string
  default     = null
}

variable "login_url" {
  description = "The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on."
  type        = string
  default     = null
}

variable "notes" {
  description = "A free text field to capture information about the service principal, typically used for operational purposes."
  type        = string
  default     = null
}

variable "notification_email_addresses" {
  description = "A free text field to capture information about the service principal, typically used for operational purposes."
  type        = list(string)
  default     = []
}


variable "preferred_single_sign_on_mode" {
  description = "The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are `oidc`, `password`, `saml` or `notSupported`. Omit this property or specify a blank string to unset."
  type        = string
  default     = null
}

variable "use_existing" {
  description = " When true, any existing service principal linked to the same application will be automatically imported. When false, an import error will be raised for any pre-existing service principal."
  type        = string
  default     = null
}

variable "saml_single_sign_on" {
  description = "A saml single sign-on block"
  type        = any
  default     = null
}

variable "feature_tags" {
  description = " A feature_tags block as described below. Cannot be used together with the tags property."
  type        = any
  default     = null
}

variable "owners" {
  description = "A set of object IDs of principals that will be granted ownership of the application. Supported object types are users or service principals."
  type        = list(string)
  default     = []
}


#azure ad service principal password

variable "service_principal_id" {
  type        = string
  description = "The object ID of the service principal for which this password should be created."
}

variable "display_name" {
  type        = string
  description = "A display name for the password."
  default     = null
}

variable "end_date" {
  type        = string
  description = "The end date until which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z)."
  default     = null
}

variable "end_date_relative" {
  type        = string
  description = "A relative duration for which the password is valid until, for example 240h (10 days) or 2400h30m."
  default     = null
}

variable "rotate_when_changed" {
  type        = map(string)
  description = "A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp."
  default     = null
}

variable "start_date" {
  type        = string
  description = "The start date from which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If this isn't specified, the current date is used."
  default     = null
}
