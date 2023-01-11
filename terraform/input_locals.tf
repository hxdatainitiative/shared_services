locals {
  initiative        = "Data Science & Engineering"
  Owner             = "fmeza@hexacta.com"
  Manager           = "Fernando Meza - Jonas Valleta"
  backend_key       = "data_initiative/templates"
  delete_protection = false

  ### Buckets to create ### 
  s3_buckets        = ["drop-zone", "raw", "processed", "backend-bucket"]
  s3_buckets_prefix = "hx-datainitiative"
}
