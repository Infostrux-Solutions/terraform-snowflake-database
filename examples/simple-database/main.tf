module "database" {
  source = "../../../terraform-sf-database"

  name    = "database_name"
  comment = "Attaching a comment"

}
