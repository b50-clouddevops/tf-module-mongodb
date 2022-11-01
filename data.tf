data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "b50-tf-state-bucket"
    key    = "vpc/${var.ENV}/terrafom.tfstate"
    region = "us-east-1"
  }
}


# ref: https://developer.hashicorp.com/terraform/language/state/remote-state-data

data "aws_secretsmanager_secret" "secrets" {
  name = "roboshop/secrets"
}

data "aws_secretsmanager_secret"

output "data" {
  value = data.aws_secretsmanager_secret.secrets
}

output "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.example.id
  secret_string = jsonencode(var.example)
}