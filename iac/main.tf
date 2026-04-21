terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "5.49.0"
      }
    }
}

provider "aws" {
  region  = "us-east-2"
  profile = "default"

  skip_metadata_api_check = true
}