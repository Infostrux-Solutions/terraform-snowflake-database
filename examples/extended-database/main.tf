terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.40.0"
    }
  }
}

provider "snowflake" {
  role = "sysadmin"
}

module "database" {
  source = "../../"

  name = "database_name"

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
