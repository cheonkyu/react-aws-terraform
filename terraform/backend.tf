terraform {
  backend "s3" {
    bucket = "cheonkyu-terraform-tfstate" # Your S3 bucket name
    key    = "terraform"                  # Path to the state file
    region = "ap-northeast-2"             # Your AWS region
  }
}
