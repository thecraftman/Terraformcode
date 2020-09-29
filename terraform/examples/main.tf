provider "aws" {
  region = "us-east-2"
  access_key = "AKIAT54TYME4QK42JJSB"
  secret_key = "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"

}

resource "aws_instance" "web" {
  ami           = "ami-05692172625678b4e"
  instance_type = "t2.micro"

  tags = {
    Owner = "Infra team"
    Name = "Flugel"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "flugel-bucket"
  acl    = "private"

  tags = {
    Name        = "flugel"
    Environment = "Dev"
    Owner = "Infrateam"
  }
}

