resource "s3_bucket_notification" "eventbridge_notifications" {
  count       = var.eventbridge_notifications ? 1 : 0
  bucket      = var.bucket
  eventbridge = var.eventbridge_notifications
}

resource "s3_bucket_notification" "sns_notifications" {
  count         = contains(keys(var.sns_notifications), "sns_arn") ? 1 : 0
  bucket        = var.bucket
  events        = var.sns_notifications.event
  filter_prefix = var.sns_notifications.filter_prefix
  topic_arn     = var.sns_notifications.sns_arn
}

resource "s3_bucket_notification" "sqs_notifications" {
  count         = contains(keys(var.sqs_notifications), "sqs_arn") ? 1 : 0
  bucket        = var.bucket
  events        = var.sns_notifications.event
  filter_prefix = var.sns_notifications.filter_prefix
  queue_arn     = var.sns_notifications.sns_arn
}

resource "s3_bucket_notification" "lambda_notifications" {
  count         = contains(keys(var.lambda_notifications), "lambda_arn") ? 1 : 0
  bucket        = var.bucket
  events        = var.sns_notifications.event
  filter_prefix = var.sns_notifications.filter_prefix
  queue_arn     = var.sns_notifications.lambda_arn
}
