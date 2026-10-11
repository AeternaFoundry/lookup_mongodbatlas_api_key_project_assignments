data "mongodbatlas_api_key_project_assignments" "api_key_project_assignments_lookup" {
  for_each = var.api_key_project_assignments_lookup

  project_id = each.value.project_id
}

