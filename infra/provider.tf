terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }

  backend "s3" {
    bucket = "analytics-1058"
    key    = "superfly/terraform.state"
    region = "eu-west-1"
  }
}