output "projects_id" {
  description = "Map of id values across all projects, keyed the same as var.projects except keys with no id are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "projects_description" {
  description = "Map of description values across all projects, keyed the same as var.projects except keys with no description are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.description if v.description != null && length(v.description) > 0 }
}
output "projects_features" {
  description = "Map of features values across all projects, keyed the same as var.projects except keys with no features are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.features if v.features != null && length(v.features) > 0 }
}
output "projects_name" {
  description = "Map of name values across all projects, keyed the same as var.projects except keys with no name are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.name if v.name != null && length(v.name) > 0 }
}
output "projects_process_template_id" {
  description = "Map of process_template_id values across all projects, keyed the same as var.projects except keys with no process_template_id are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.process_template_id if v.process_template_id != null && length(v.process_template_id) > 0 }
}
output "projects_version_control" {
  description = "Map of version_control values across all projects, keyed the same as var.projects except keys with no version_control are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.version_control if v.version_control != null && length(v.version_control) > 0 }
}
output "projects_visibility" {
  description = "Map of visibility values across all projects, keyed the same as var.projects except keys with no visibility are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.visibility if v.visibility != null && length(v.visibility) > 0 }
}
output "projects_work_item_template" {
  description = "Map of work_item_template values across all projects, keyed the same as var.projects except keys with no work_item_template are omitted"
  value       = { for k, v in azuredevops_project.projects : k => v.work_item_template if v.work_item_template != null && length(v.work_item_template) > 0 }
}

