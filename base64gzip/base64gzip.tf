##############################################
# Function: base64gzip
##############################################
provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

##############################################
# Variables
##############################################
#variable "base64gzip" {}

variable "sourcefile" {
  default = "input.txt"
}

variable "aws_access_key" {}

variable "aws_secret_key" {}

##############################################
# Resources
##############################################

data "local_file" "source" {
  filename = "${var.sourcefile}"
}

resource "local_file" "base64gzip" {
  content  = "${base64gzip(data.local_file.source.content)}"
  filename = "output.txt"
}

resource "aws_s3_bucket" "bucket" {
  bucket_prefix = "base64gzip"
  acl           = "public-read"
}

resource "aws_s3_bucket_object" "object" {
  bucket           = "${aws_s3_bucket.bucket.id}"
  key              = "output.txt"
  content          = "${base64gzip(data.local_file.source.content)}"
  content_encoding = "identity"
  acl              = "public-read"
}

##############################################
# Outputs
##############################################
output "file" {
  value = "https://${aws_s3_bucket.bucket.bucket_domain_name}/${aws_s3_bucket_object.object.id}"
}
