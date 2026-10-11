resource "okta_auth_server_policy" "auth_server_policies" {
  for_each = var.auth_server_policies

  auth_server_id   = each.value.auth_server_id
  client_whitelist = each.value.client_whitelist
  description      = each.value.description
  name             = each.value.name
  priority         = each.value.priority
  status           = each.value.status
}

