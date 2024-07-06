module "dynamodb" {
  source = "./modules/dynamotables"
}

module "sqs" {
  source = "./modules/sqs"
}
