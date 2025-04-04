terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "tristan-sina-s3-bucket-terraform"
    key = "terraform.tfstate"
    region = "us-west-2"
    encrypt = true 
    use_lockfile = true  

  }
}

provider "aws" {
  region = "us-west-2"
}
