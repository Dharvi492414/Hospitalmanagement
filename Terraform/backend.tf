terraform {
  backend "s3" {
    bucket         = "kumaran492414"   # Replace with your bucket name
    key            = "eks/terraform.tfstate"        # Unique key per environment (e.g., dev/staging/prod)
    region         = "us-east-1"                    # Replace with your AWS region
    dynamodb_table = "terraform-locks"              # For state locking
    encrypt        = true
  }
}