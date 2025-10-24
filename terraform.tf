terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.15.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

##############################################################
# S3 bucket Creation
##############################################################
resource "aws_s3_bucket" "statefile" {
  bucket = var.bucket_name

   tags = {
    Imported = "true"
  }
}
# ##############################################################
# # S3 bucket public access
# ##############################################################
# resource "aws_s3_bucket_public_access_block" "block" {
#   bucket                  = aws_s3_bucket.bucket.id
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }
# ##############################################################
# # S3 bucket Life cycle rule
# ##############################################################
# resource "aws_s3_bucket_lifecycle_configuration" "lifecycle" {
#   bucket = aws_s3_bucket.bucket.id

#   rule {
#     id     = "expire-old-objects"
#     status = "Enabled"

#     expiration {
#       days = 30
#     }
#   }
# }
# ##############################################################
# # S3 bucket policy
# ##############################################################
# resource "aws_s3_bucket_policy" "policy" {
#   bucket = aws_s3_bucket.bucket.id
#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Effect    = "Allow"
#       Principal = "*"
#       Action    = "s3:GetObject"
#       Resource  = "${aws_s3_bucket.bucket.arn}/*"
#     }]
#   })
# }

