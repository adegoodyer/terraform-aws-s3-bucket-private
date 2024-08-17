variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "region" {
  description = "AWS region where the S3 bucket will be created."
  type        = string
  default     = "eu-west-1" # default region set to eu-west-1
}

variable "enable_encryption" {
  description = "Whether to enable server-side encryption for the S3 bucket."
  type        = bool
  default     = true
}

