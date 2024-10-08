# Create an IAM User
resource "aws_iam_user" "my_user" {
  name          = var.registry_user_name
  force_destroy = true # This allows to delete the user even if access keys exist
}

# Attach S3 Full Access Policy
resource "aws_iam_user_policy_attachment" "s3_full_access" {
  user       = aws_iam_user.my_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

# Attach ECR Full Access Policy
resource "aws_iam_user_policy_attachment" "ecr_full_access" {
  user       = aws_iam_user.my_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}

# Create Access Key for the User
resource "aws_iam_access_key" "my_user_key" {
  user = aws_iam_user.my_user.name
}

# Output the Access Key and Secret Key
output "access_key_id" {
  description = "Access Key ID"
  value       = aws_iam_access_key.my_user_key.id
}

output "secret_access_key" {
  description = "Secret Access Key"
  value       = aws_iam_access_key.my_user_key.secret
  sensitive   = true # Marking it as sensitive
}
