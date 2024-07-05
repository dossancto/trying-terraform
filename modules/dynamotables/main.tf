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

resource "aws_dynamodb_table" "contacts" {
  name           = "tb_contacts"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1

  hash_key  = "contact_id"
  range_key = "user_id"

  attribute {
    name = "contact_id"
    type = "S"
  }

  attribute {
    name = "user_id"
    type = "S"
  }
  
  global_secondary_index {
    name            = "Type-Index"
    hash_key        = "type"
    write_capacity  = 1
    read_capacity   = 1
    projection_type = "ALL"
  }

  attribute {
    name = "type"
    type = "S"
  }

  tags = {
    Name = "My DynamoDB Table"
  }
}

