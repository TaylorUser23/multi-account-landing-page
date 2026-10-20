output "state_bucket" {
  value = aws_s3_bucket.state.bucket
}

output "backend_hcl" {
  value = <<-EOT
    bucket       = "${aws_s3_bucket.state.bucket}"
    region       = "${var.region}"
    encrypt      = true
    kms_key_id   = "${aws_kms_key.state.arn}"
    use_lockfile = true
  EOT
}