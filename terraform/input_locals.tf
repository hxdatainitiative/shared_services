locals {
  initiative        = "Data Science & Engineering"
  owner             = "fmeza@hexacta.com"
  manager           = "Fernando Meza - Jonas Valleta"
  backend_key       = "data_initiative/templates"
  delete_protection = false

  ### Buckets to create ### 
  s3_buckets = {
    "drop-zone" = {
      description = "Bucket to receive raw data without any organization"
    },
    "raw" = {
      description = "Bucket to keep organized raw data"
    },
    "processed" = {
      description = "Bucket to put already cleaned and processed data"
    },
    "backend" = {
      description = "Bucket to keep all terraform states for the platform"
    }
  }
  s3_buckets_prefix = "hx-datainitiative"
}
