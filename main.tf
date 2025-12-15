module "dev_app_project" {
  # The source points to your local module directory
  source = "./modules/project" 

  # Pass variables sourced from dev.tfvars to your module's inputs
  billing_account = var.billing_account
  org_id          = var.org_id
  project_name    = var.project_name
  project_prefix  = var.project_prefix
}

# 2. Example of using the project output to create a resource
resource "google_storage_bucket" "app_logs" {
  project = module.dev_app_project.project_id # Get the ID from the module output
  name    = "${module.dev_app_project.project_id}-app-logs"
  location = var.gcp_region
  uniform_bucket_level_access = true
  depends_on = [module.dev_app_project] 
}
