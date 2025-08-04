resource "aws_dynamodb_table" "my_dynamo_table" {
    name = "terraform-demo-state_table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    #tags = {
    #    Name = state_table_name
    #}
}

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "terraform-demo-s3-bucket-shwetajagdale-2025"
    #tags = {
    #    Name = state_bucket_name
    #}
}
