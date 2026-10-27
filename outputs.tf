output "group_role_management_policy_lookup_id" {
  description = "Map of id values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.id }
}
output "group_role_management_policy_lookup_description" {
  description = "Map of description values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.description }
}
output "group_role_management_policy_lookup_display_name" {
  description = "Map of display_name values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.display_name }
}
output "group_role_management_policy_lookup_group_id" {
  description = "Map of group_id values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.group_id }
}
output "group_role_management_policy_lookup_role_id" {
  description = "Map of role_id values across all group_role_management_policy_lookup, keyed the same as var.group_role_management_policy_lookup"
  value       = { for k, v in data.azuread_group_role_management_policy.group_role_management_policy_lookup : k => v.role_id }
}

