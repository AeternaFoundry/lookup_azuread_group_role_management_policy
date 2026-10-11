variable "group_role_management_policy_lookup" {
  description = <<EOT
Map of group_role_management_policy_lookup, attributes below
Required:
    - group_id
    - role_id
EOT

  type = map(object({
    group_id = string
    role_id  = string
  }))
}

