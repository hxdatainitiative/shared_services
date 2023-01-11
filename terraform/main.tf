module "s3_buckets" {
  for_each = local.s3_buckets
  source   = "terraform-aws-modules/s3-bucket/aws"

  bucket = "${local.s3_buckets_prefix}-${each.key}"
  acl    = "private"

  versioning = {
    enabled = false
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "aws:kms"
      }
    }
  }

  object_ownership = "BucketOwnerPreferred"

  request_payer = "Requester"
}
