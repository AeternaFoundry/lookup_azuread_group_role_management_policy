variable "group_role_management_policy_lookup" {
  description = <<EOT
Map of group_role_management_policy_lookup, attributes below
Required:
    - group_id
    - role_id
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    group_id = string
    role_id  = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.group_role_management_policy_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.group_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

