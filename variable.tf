# variables.tf

# Variable for the S3 bucket name
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-bucketjashshah"
}

# Variable for the S3 bucket tags
variable "bucket_tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {
    Name        = "MyS3Bucket-jash"
    Environment = "PES"
  }
}

# Variable for the S3 object key
variable "object_key" {
  description = "The key of the S3 object (file path within the bucket)"
  type        = string
  default     = "punjab.jpeg"
}

# Variable for the source file path
variable "source_file" {
  description = "The local path to the file to be uploaded"
  type        = string
  default     = "punjab.jpeg"
}
