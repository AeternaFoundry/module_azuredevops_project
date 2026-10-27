output "projects_id" {
  description = "Map of id values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.id }
}
output "projects_description" {
  description = "Map of description values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.description }
}
output "projects_features" {
  description = "Map of features values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.features }
}
output "projects_name" {
  description = "Map of name values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.name }
}
output "projects_process_template_id" {
  description = "Map of process_template_id values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.process_template_id }
}
output "projects_version_control" {
  description = "Map of version_control values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.version_control }
}
output "projects_visibility" {
  description = "Map of visibility values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.visibility }
}
output "projects_work_item_template" {
  description = "Map of work_item_template values across all projects, keyed the same as var.projects"
  value       = { for k, v in azuredevops_project.projects : k => v.work_item_template }
}

