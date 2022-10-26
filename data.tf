data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {

  }
}


# ref: https://developer.hashicorp.com/terraform/language/state/remote-state-data