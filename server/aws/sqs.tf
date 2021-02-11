resource "aws_sqs_queue" "aggregation_lambda_dead_letter" {
  name                              = "aggregation-lambda-dead-letter-queue"
  kms_master_key_id                 = aws_kms_key.cw.arn
  kms_data_key_reuse_period_seconds = 86400
  message_retention_seconds         = 1209600

  tags = {
    (var.billing_tag_key) = var.billing_tag_value
  }
}
