terraform {
  backend "s3" {
    bucket  = "infra-state-final-project-artem-bryhynets"
    key     = "final/terraform.tfstate"
    encrypt = true
    region  = "eu-north-1"
  }
}

