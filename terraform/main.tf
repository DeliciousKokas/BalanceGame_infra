provider "aws" {
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  region     = var.aws_region
}

resource "aws_s3_bucket" "balance-game-bucket" {
  bucket = "balance-game"
  acl    = "private"

  tags = {
    Name        = "balance-game"
    Environment = "Dev"
  }
}