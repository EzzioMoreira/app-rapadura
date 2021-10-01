provider "aws" {
  region  = var.aws_region
  version = "= 3.0"
}

terraform {
  backend "s3" {
    bucket = "app-rapadura"
    key    = "app-terraform-rapaduras.tfstate"
    region = var.aws_region
  }
}
