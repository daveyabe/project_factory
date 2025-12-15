output "project_id" {
  description = "The generated project ID."
  value       = module.project.project_id
}

output "project_name" {
  description = "The generated project name."
  value       = module.project.project_name
}

output "project_number" {
  description = "The generated project number."
  value       = module.project.project_number
}

#output "service_account_emails" {
#  description = "The list of service accounts created by the module."
#  value       = module.project.service_account_emails
#}
