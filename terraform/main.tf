module "sqs_processing_media" {
  source     = "./modules/sqs"
  queue_name = "processing_media"
}

module "sqs_result_media" {
  source     = "./modules/sqs"
  queue_name = "result_media"
}

resource "aws_ssm_parameter" "sqs_processing_media" {
  name  = "/hacka/sqs/sqs_result_media"
  type  = "String"
  value = "processing_media"
}

resource "aws_ssm_parameter" "sqs_result_media" {
  name  = "/hacka/sqs/result_media"
  type  = "String"
  value = "result_media"
}
