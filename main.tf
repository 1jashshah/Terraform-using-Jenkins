# main.tf

# Configure the AWS provider


# Define the S3 bucket resource
resource "aws_s3_bucket" "my_bucket_jash" {
  bucket = var.bucket_name
  tags   = var.bucket_tags
}

# Upload a file to the S3 bucket
resource "aws_s3_object" "jash" {
  key    = var.object_key
  bucket = aws_s3_bucket.my_bucket_jash.bucket
  source = var.source_file

  # Optional: Content type for the file
  content_type = "image/jpeg"
}
