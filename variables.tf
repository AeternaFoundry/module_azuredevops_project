variable "projects" {
  description = <<EOT
Map of projects, attributes below
Required:
    - name
Optional:
    - description
    - features
    - version_control
    - visibility
    - work_item_template
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name               = string
    description        = optional(string)
    features           = optional(map(string))
    version_control    = optional(string)
    visibility         = optional(string)
    work_item_template = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.projects : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.projects : (
        v.features == null || (length(v.features) != 0)
      )
    ])
    error_message = "[from validateProjectFeatures: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

