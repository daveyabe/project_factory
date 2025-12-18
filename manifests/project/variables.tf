variable "billing_account" {
  description = "The ID of the billing account to associate with the project."
  type        = string
}

variable "org_id" {
  description = "The ID of the organization to create the project in."
  type        = string
}

variable "folder_id" {
  description = "The ID of the folder to create the project in (optional)."
  type        = string
  default     = null
}

variable "project_name" {
  description = "The user-friendly name for the project."
  type        = string
}

variable "project_prefix" {
  description = "A prefix to use for the project ID to ensure uniqueness."
  type        = string
}

variable "gcp_region" {
  description = "A GCP Region"
  type        = string
  default     = "northamerica-northeast2"
}
