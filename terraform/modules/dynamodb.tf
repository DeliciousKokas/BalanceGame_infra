
resource "aws_dynamodb_table" "balance-game-cards-table" {
  name           = "balance-game-cards-table"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"

  attribute {
    name = "id"
    type = "N"
  }

}