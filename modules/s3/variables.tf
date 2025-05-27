variable "bucket_count" {
  description = "Number of S3 buckets to create"
  type        = number
}

variable "env" {
  description = "Environment name (dev, qa, prod)"
  type        = string
}
