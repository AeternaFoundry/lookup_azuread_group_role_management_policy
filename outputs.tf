output "group_role_management_policy_lookup_id" {
  description = "Map of id values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_role_management_policy_lookup_description" {
  description = "Map of description values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "group_role_management_policy_lookup_display_name" {
  description = "Map of display_name values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "group_role_management_policy_lookup_group_id" {
  description = "Map of group_id values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_role_management_policy_lookup_role_id" {
  description = "Map of role_id values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.role_id if v.role_id != null && length(v.role_id) > 0 }
}

