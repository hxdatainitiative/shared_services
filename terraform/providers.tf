provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Initiative       = local.initiative
      Owner            = local.owner
      Manager          = local.manager
      BackendBucket    = "${local.s3_buckets_prefix}-backend-bucket"
      BackendKey       = local.backend_key
      DeleteProtection = local.delete_protection
    }
  }
}

terraform {
  backend "s3" {
    bucket = "hx-datainitiative-backend"
    key    = "shared_services/terraform.tfstate"
    region = "us-east-1"
  }
}
