# Snowflake Database

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

 Run `terraform destroy` when you don't need the user.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.33.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_database.database](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/database) | resource |
| [snowflake_database_grant.grant_create_schema](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/database_grant) | resource |
| [snowflake_database_grant.grant_modify](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/database_grant) | resource |
| [snowflake_database_grant.grant_monitor](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/database_grant) | resource |
| [snowflake_database_grant.grant_usage](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/database_grant) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach_grant_create_schema"></a> [attach\_grant\_create\_schema](#input\_attach\_grant\_create\_schema) | Create the grant create\_schema at the same time. (true\|false) | `bool` | `false` | no |
| <a name="input_attach_grant_modify"></a> [attach\_grant\_modify](#input\_attach\_grant\_modify) | Create the grant modify at the same time. (true\|false) | `bool` | `false` | no |
| <a name="input_attach_grant_monitor"></a> [attach\_grant\_monitor](#input\_attach\_grant\_monitor) | Create the grant monitor at the same time. (true\|false) | `bool` | `false` | no |
| <a name="input_attach_grant_usage"></a> [attach\_grant\_usage](#input\_attach\_grant\_usage) | Create the grant usage at the same time. (true\|false) | `bool` | `false` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | A  comment to add to the database resource. | `string` | `"Created by Terraform."` | no |
| <a name="input_create_schema_roles"></a> [create\_schema\_roles](#input\_create\_schema\_roles) | A list of roles that will be granted create\_schema on the database. | `list(string)` | `[]` | no |
| <a name="input_create_schema_shares"></a> [create\_schema\_shares](#input\_create\_schema\_shares) | A list of roles that will be granted create\_schema on the database shares. | `list(string)` | `[]` | no |
| <a name="input_create_schema_with_grant_option"></a> [create\_schema\_with\_grant\_option](#input\_create\_schema\_with\_grant\_option) | When this is set to true, allows the recipient role to grant the privileges to other roles. | `bool` | `false` | no |
| <a name="input_data_retention_time_in_days"></a> [data\_retention\_time\_in\_days](#input\_data\_retention\_time\_in\_days) | Days to retain deleted data for. Default is 1 | `string` | `1` | no |
| <a name="input_from_database"></a> [from\_database](#input\_from\_database) | Specify a database to create a clone from. | `string` | `null` | no |
| <a name="input_from_replica"></a> [from\_replica](#input\_from\_replica) | Specify a fully-qualified path to a database to create a replica from. | `string` | `null` | no |
| <a name="input_from_share"></a> [from\_share](#input\_from\_share) | Specify a provider and a share in this map to create a database from a share. | `map(string)` | `{}` | no |
| <a name="input_modify_roles"></a> [modify\_roles](#input\_modify\_roles) | A list of roles that will be granted modify on the database. | `list(string)` | `[]` | no |
| <a name="input_modify_shares"></a> [modify\_shares](#input\_modify\_shares) | A list of roles that will be granted modify on the database shares. | `list(string)` | `[]` | no |
| <a name="input_modify_with_grant_option"></a> [modify\_with\_grant\_option](#input\_modify\_with\_grant\_option) | When this is set to true, allows the recipient role to grant the privileges to other roles. | `bool` | `false` | no |
| <a name="input_monitor_roles"></a> [monitor\_roles](#input\_monitor\_roles) | A list of roles that will be granted monitor on the database. | `list(string)` | `[]` | no |
| <a name="input_monitor_shares"></a> [monitor\_shares](#input\_monitor\_shares) | A list of roles that will be granted monitor on the database shares. | `list(string)` | `[]` | no |
| <a name="input_monitor_with_grant_option"></a> [monitor\_with\_grant\_option](#input\_monitor\_with\_grant\_option) | When this is set to true, allows the recipient role to grant the privileges to other roles. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name to apply to the database resource. | `string` | n/a | yes |
| <a name="input_usage_roles"></a> [usage\_roles](#input\_usage\_roles) | A list of roles that will be granted usage on the database. | `list(string)` | `[]` | no |
| <a name="input_usage_shares"></a> [usage\_shares](#input\_usage\_shares) | A list of roles that will be granted usage on the database shares. | `list(string)` | `[]` | no |
| <a name="input_usage_with_grant_option"></a> [usage\_with\_grant\_option](#input\_usage\_with\_grant\_option) | When this is set to true, allows the recipient role to grant the privileges to other roles. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_id"></a> [database\_id](#output\_database\_id) | The database resource ID. |
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | The database resource name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
