provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Initiative       = local.initative
      Owner            = local.owner
      Manager          = local.manager
    #   BackendBucket    = data.backend_bucket
      BackendKey       = local.backend_key
      DeleteProtection = local.delete_protection
    }
  }
}
