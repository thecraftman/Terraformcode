resource "aws_s3_bucket" "b" {
  bucket = "flugel-bucket"
  acl    = "private"

  tags = {
    Name        = "flugel"
    Environment = "Dev"
    Owner = "Infrateam"
  }
}

