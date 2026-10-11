output "auth_server_policies_id" {
  description = "Map of id values across all auth_server_policies, keyed the same as var.auth_server_policies except keys with no id are omitted"
  value       = { for k, v in okta_auth_server_policy.auth_server_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "auth_server_policies_auth_server_id" {
  description = "Map of auth_server_id values across all auth_server_policies, keyed the same as var.auth_server_policies except keys with no auth_server_id are omitted"
  value       = { for k, v in okta_auth_server_policy.auth_server_policies : k => v.auth_server_id if v.auth_server_id != null && length(v.auth_server_id) > 0 }
}
output "auth_server_policies_client_whitelist" {
  description = "Map of client_whitelist values across all auth_server_policies, keyed the same as var.auth_server_policies except keys with no client_whitelist are omitted"
  value       = { for k, v in okta_auth_server_policy.auth_server_policies : k => v.client_whitelist if v.client_whitelist != null && length(v.client_whitelist) > 0 }
}
output "auth_server_policies_description" {
  description = "Map of description values across all auth_server_policies, keyed the same as var.auth_server_policies except keys with no description are omitted"
  value       = { for k, v in okta_auth_server_policy.auth_server_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "auth_server_policies_name" {
  description = "Map of name values across all auth_server_policies, keyed the same as var.auth_server_policies except keys with no name are omitted"
  value       = { for k, v in okta_auth_server_policy.auth_server_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "auth_server_policies_priority" {
  description = "Map of priority values across all auth_server_policies, keyed the same as var.auth_server_policies except keys with no priority are omitted"
  value       = { for k, v in okta_auth_server_policy.auth_server_policies : k => v.priority if v.priority != null }
}
output "auth_server_policies_status" {
  description = "Map of status values across all auth_server_policies, keyed the same as var.auth_server_policies except keys with no status are omitted"
  value       = { for k, v in okta_auth_server_policy.auth_server_policies : k => v.status if v.status != null && length(v.status) > 0 }
}

