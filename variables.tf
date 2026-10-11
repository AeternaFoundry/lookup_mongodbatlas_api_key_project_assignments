variable "api_key_project_assignments_lookup" {
  description = <<EOT
Map of api_key_project_assignments_lookup, attributes below
Required:
    - project_id
EOT

  type = map(object({
    project_id = string
  }))
}

