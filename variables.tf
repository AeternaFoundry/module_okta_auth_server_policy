variable "auth_server_policies" {
  description = <<EOT
Map of auth_server_policies, attributes below
Required:
    - auth_server_id
    - client_whitelist
    - description
    - name
    - priority
Optional:
    - status
EOT

  type = map(object({
    auth_server_id   = string
    client_whitelist = set(string)
    description      = string
    name             = string
    priority         = number
    status           = optional(string)
  }))
}

