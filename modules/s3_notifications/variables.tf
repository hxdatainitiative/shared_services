variable "bucket" {
  type        = string
  description = "Bucket to add notifications to"
}

variable "eventbridge_notifications" {
  default     = false
  type        = bool
  description = "Activate eventbridge notifications"
}

variable "sns_notifications" {
  default     = {}
  type        = map(
    object(
        {
            sns_arn = string
            filter_prefix = string
            event = string
        }
    )
  )
  description = "Activate SNS notifications to specified ARN"
}

variable "sqs_notifications" {
  default = {}
  type = map(
    object(
        {
            sqs_arn = string
            filter_prefix = string
            event = string
        }
    )
  )
  description = "Activate SQS notifications to specified ARN"
}

variable "lambda_notifications" {
  default = {}
  type = map(
    object(
        {
            lambda_arn = string
            filter_prefix = string
            event = string
        }
    )
  )
  description = "Activate Lambda Function notifications to specified ARN"
}
