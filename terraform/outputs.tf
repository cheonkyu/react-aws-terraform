output "s3_bucket_domain_name" {
  value = module.s3_bucket.s3_bucket_bucket_regional_domain_name
}

output "cloudfront_domain_name" {
  value = module.cloudfront.cloudfront_distribution_domain_name
}

output "cloudfront_distribution_id" {
  value = module.cloudfront.cloudfront_distribution_id
}
