resource "aws_sqs_queue" "terraform_queue" {
  name                      = "terraform-example-queue.fifo"
  delay_seconds             = 1
  fifo_queue                = true
  max_message_size          = 2048
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  content_based_deduplication = true

  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.terraform_queue_deadletter.arn
    maxReceiveCount     = 4
  })

  tags = {
    Environment = "production"
  }
}

resource "aws_sqs_queue" "terraform_queue_deadletter" {
  name = "terraform-example-deadletter-queue"
}
