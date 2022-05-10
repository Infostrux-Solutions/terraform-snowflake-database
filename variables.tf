variable "name" {
  type        = string
  description = "The name to apply to the database resource."
}
variable "comment" {
  type        = string
  description = "A  comment to add to the database resource."
  default     = "Created by Terraform."
}
variable "from_database" {
  type        = string
  description = "Specify a database to create a clone from."
  default     = null
}
variable "from_replica" {
  type        = string
  description = "Specify a fully-qualified path to a database to create a replica from."
  default     = null
}
variable "from_share" {
  type        = map(string)
  description = "Specify a provider and a share in this map to create a database from a share."
  default     = {}
}
variable "data_retention_time_in_days" {
  type        = string
  description = "Days to retain deleted data for. Default is 1"
  default     = 1
}
variable "attach_grant_usage" {
  type        = bool
  description = "Create the grant usage at the same time. (true|false)"
  default     = false
}
variable "usage_roles" {
  type        = list(string)
  description = "A list of roles that will be granted usage on the database."
  default     = []
}
variable "usage_shares" {
  type        = list(string)
  description = "A list of roles that will be granted usage on the database shares."
  default     = []
}
variable "usage_with_grant_option" {
  type        = bool
  description = "When this is set to true, allows the recipient role to grant the privileges to other roles."
  default     = false
}
variable "attach_grant_modify" {
  type        = bool
  description = "Create the grant modify at the same time. (true|false)"
  default     = false
}
variable "modify_roles" {
  type        = list(string)
  description = "A list of roles that will be granted modify on the database."
  default     = []
}
variable "modify_shares" {
  type        = list(string)
  description = "A list of roles that will be granted modify on the database shares."
  default     = []
}
variable "modify_with_grant_option" {
  type        = bool
  description = "When this is set to true, allows the recipient role to grant the privileges to other roles."
  default     = false
}
variable "attach_grant_create_schema" {
  type        = bool
  description = "Create the grant create_schema at the same time. (true|false)"
  default     = false
}
variable "create_schema_roles" {
  type        = list(string)
  description = "A list of roles that will be granted create_schema on the database."
  default     = []
}
variable "create_schema_shares" {
  type        = list(string)
  description = "A list of roles that will be granted create_schema on the database shares."
  default     = []
}
variable "create_schema_with_grant_option" {
  type        = bool
  description = "When this is set to true, allows the recipient role to grant the privileges to other roles."
  default     = false
}
variable "attach_grant_monitor" {
  type        = bool
  description = "Create the grant monitor at the same time. (true|false)"
  default     = false
}
variable "monitor_roles" {
  type        = list(string)
  description = "A list of roles that will be granted monitor on the database."
  default     = []
}
variable "monitor_shares" {
  type        = list(string)
  description = "A list of roles that will be granted monitor on the database shares."
  default     = []
}
variable "monitor_with_grant_option" {
  type        = bool
  description = "When this is set to true, allows the recipient role to grant the privileges to other roles."
  default     = false
}
