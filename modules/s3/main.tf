resource "aws_s3_bucket" "buckets" {
  count  = var.bucket_count
  bucket = "lwm-${var.env}-bucket-${count.index}"

  force_destroy = true

  tags = {
    Environment = var.env
    Name        = "lwm-${var.env}-bucket-${count.index}"
  }
}
