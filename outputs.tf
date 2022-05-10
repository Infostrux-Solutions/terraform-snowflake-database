output "database_id" {
  value       = snowflake_database.database.id
  description = "The database resource ID."
}

output "database_name" {
  value       = snowflake_database.database.name
  description = "The database resource name."
}
