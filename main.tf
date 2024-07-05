resource "aws_dynamodb_table" "my_table" {
  name           = "MinhaTabela"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1

  hash_key = "UserId"
  attribute {
    name = "UserId"
    type = "S"
  }

  tags = {
    Name = "My DynamoDB Table"
  }
}
