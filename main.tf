resource "azuredevops_project" "projects" {
  for_each = var.projects

  name               = each.value.name
  description        = each.value.description
  features           = each.value.features
  version_control    = each.value.version_control
  visibility         = each.value.visibility
  work_item_template = each.value.work_item_template

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

