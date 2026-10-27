data "azuread_group_role_management_policy" "group_role_management_policy_lookup" {
  for_each = var.group_role_management_policy_lookup

  group_id = each.value.group_id
  role_id  = each.value.role_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

