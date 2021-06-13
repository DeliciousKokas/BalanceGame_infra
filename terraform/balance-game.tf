variable "database_name" {
  type = string
}
variable "master_username" {
  type = string
}
variable "master_password" {
  type = string
}
module "balance-game" {
  source                 = "./modules/"
  database_name           = var.database_name
  master_username         = var.master_username
  master_password         = var.master_password
}