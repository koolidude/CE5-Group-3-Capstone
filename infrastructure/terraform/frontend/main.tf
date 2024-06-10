provider "aws" {
  region = "us-east-1"
}

# IAM Role for S3 bucket policy management
resource "aws_iam_role" "s3_bucket_policy_role" {
  name = "group-3-s3-bucket-policy-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attach Policy to IAM Role
resource "aws_iam_role_policy" "s3_bucket_policy" {
  name   = "group-3-s3-bucket-policy"
  role   = aws_iam_role.s3_bucket_policy_role.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "s3:PutBucketPolicy",
          "s3:GetBucketPolicy",
          "s3:GetObject"
        ],
        Resource = [
          "arn:aws:s3:::group-3-frontend-${var.branch_name}",
          "arn:aws:s3:::group-3-frontend-${var.branch_name}/*"
        ]
      }
    ]
  })
}

