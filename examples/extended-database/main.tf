module "database" {
  source = "../../../terraform-sf-database"

  name = "database_name"

  from_database = "TEST"
  from_replica  = ""
  from_share    = {}

  attach_grant_usage      = true
  usage_roles             = ["SYSADMIN"]
  usage_shares            = []
  usage_with_grant_option = true

  attach_grant_modify      = true
  modify_roles             = ["SYSADMIN"]
  modify_shares            = []
  modify_with_grant_option = true

  attach_grant_create_schema      = true
  create_schema_roles             = ["SYSADMIN"]
  create_schema_shares            = []
  create_schema_with_grant_option = true

  attach_grant_monitor      = true
  monitor_roles             = ["SYSADMIN"]
  monitor_shares            = []
  monitor_with_grant_option = true

  data_retention_time_in_days = 1
}
