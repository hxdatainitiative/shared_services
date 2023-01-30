locals {
  initiative        = "Data Science and Engineering"
  owner             = "fmeza@hexacta.com"
  manager           = "Fernando Meza - Jonas Valleta"
  backend_key       = "data_initiative/shared_services"
  delete_protection = "False"

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
    }
  }
  s3_buckets_prefix = "hx-datainitiative"
}
