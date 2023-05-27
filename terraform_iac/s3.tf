# S3 bucket for website.
resource "aws_s3_bucket" "www_bucket" {
  bucket = var.bucket_name
  
  tags = var.common_tags
}