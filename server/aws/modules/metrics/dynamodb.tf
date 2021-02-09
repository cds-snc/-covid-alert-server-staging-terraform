resource "aws_dynamodb_table" "raw_metrics" { 

  name = "raw_metrics"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "uuid"

  ttl {
    name = "expdate"
    enabled = true
  }

  stream_enabled = true

  server_side_encryption { 
    enabled = true
  }

  attribute {
    name = "uuid"
    type = "S"
  }

  attribute { 
    name = "expdate"
    type = "N"
  }

}