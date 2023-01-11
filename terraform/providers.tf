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
