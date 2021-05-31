resource "aws_s3_bucket" "balance-game-bucket" {
  bucket = "balance-game-com"
  acl    = "public-read"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_policy" "balance-game-bucket" {
  bucket = aws_s3_bucket.balance-game-bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "MYBUCKETPOLICY"
    Statement = [
      {
        Sid       = ""
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = [
          aws_s3_bucket.balance-game-bucket.arn,
          "${aws_s3_bucket.balance-game-bucket.arn}/*",
        ]
      },
    ]
  })
}