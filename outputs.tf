output "api_key_project_assignments_lookup_project_id" {
  description = "Map of project_id values across all api_key_project_assignments_lookup, keyed the same as var.api_key_project_assignments_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_api_key_project_assignments.api_key_project_assignments_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "api_key_project_assignments_lookup_results" {
  description = "Map of results values across all api_key_project_assignments_lookup, keyed the same as var.api_key_project_assignments_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_api_key_project_assignments.api_key_project_assignments_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

