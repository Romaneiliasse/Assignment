# Provider that is necessary to run AWS terrafom commands and region is specified to match the only region authorised ##
#(could be switched to a list in var file if we're using modules and more regions were authorized).

provider "aws" {
  region     = var.aws_region
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}