module "project" {
  # This is the source for the official Project Factory module
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 17.0.1" # Use a specific version
  random_project_id = true # Adds a random suffix for uniqueness
  billing_account = var.billing_account
  org_id          = var.org_id
  #folder_id       = var.folder_id
  deletion_policy = "DELETE"
  name = var.project_name
  #usage_bucket_name = "${var.project_prefix}-usagereport-bucket"
  #usage_bucket_prefix = "n43/devops/tf/base"  

  # Optional: Enable APIs necessary for typical project usage (e.g., Compute, IAM)
  activate_apis = [
    "compute.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "serviceusage.googleapis.com",
    "storage.googleapis.com",
    "containerregistry.googleapis.com",   # Often needed alongside GKE, Cloud Run, and general networking
    "cloudfunctions.googleapis.com",      # If using serverless functions
    "servicenetworking.googleapis.com",   # Crucial for private service access (e.g., Cloud SQL, Memorystore)
    "dns.googleapis.com",                 # Cloud DNS
    "cloudbuild.googleapis.com",          # If using CI/CD pipelines
    "iam.googleapis.com"                  # Cloud Identity and Access Management
  ]
}
