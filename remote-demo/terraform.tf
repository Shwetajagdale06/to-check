terraform {

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

backend "s3" {
	bucket = "terraform-demo-s3-bucket-shwetajagdale-2025" 
	key = "terraform.tfstate"
	region = "ap-south-1"
	dynamodb_table = "terraform-demo-state_table"
}
}
