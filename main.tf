provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

provider "aws" {
  alias   = "west"
  region  = "us-west-2"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "mybucketrebekika"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}