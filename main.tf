resource "snowflake_database" "database" {
  name    = var.name
  comment = var.comment

  data_retention_time_in_days = var.data_retention_time_in_days
}

resource "snowflake_database_grant" "grant_usage" {
  count = var.attach_grant_usage == true ? 1 : 0

  database_name = snowflake_database.database.name

  privilege = "USAGE"

  roles  = var.usage_roles
  shares = var.usage_shares

  enable_multiple_grants = true
  with_grant_option      = var.usage_with_grant_option
}

resource "snowflake_database_grant" "grant_modify" {
  count = var.attach_grant_modify == true ? 1 : 0

  database_name = snowflake_database.database.name

  privilege = "MODIFY"

  roles  = var.modify_roles
  shares = var.modify_shares

  enable_multiple_grants = true
  with_grant_option      = var.modify_with_grant_option
}

resource "snowflake_database_grant" "grant_create_schema" {
  count = var.attach_grant_create_schema == true ? 1 : 0

  database_name = snowflake_database.database.name

  privilege = "CREATE SCHEMA"

  roles  = var.create_schema_roles
  shares = var.create_schema_shares

  enable_multiple_grants = true
  with_grant_option      = var.create_schema_with_grant_option
}

resource "snowflake_database_grant" "grant_monitor" {
  count = var.attach_grant_monitor == true ? 1 : 0

  database_name = snowflake_database.database.name

  privilege = "MONITOR"

  roles  = var.monitor_roles
  shares = var.monitor_shares

  enable_multiple_grants = true
  with_grant_option      = var.monitor_with_grant_option
}
