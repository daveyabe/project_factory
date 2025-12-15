resource "google_storage_bucket" "usagereport_bucket" {
  name    = "dev-proj1-usagereport-bucket"
  location = var.gcp_region
  project = module.dev_app_project.project_id
  uniform_bucket_level_access = true
}

