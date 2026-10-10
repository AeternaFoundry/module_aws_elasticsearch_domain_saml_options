output "elasticsearch_domain_saml_options_id" {
  description = "Map of id values across all elasticsearch_domain_saml_options, keyed the same as var.elasticsearch_domain_saml_options"
  value       = { for k, v in aws_elasticsearch_domain_saml_options.elasticsearch_domain_saml_options : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_domain_saml_options_domain_name" {
  description = "Map of domain_name values across all elasticsearch_domain_saml_options, keyed the same as var.elasticsearch_domain_saml_options"
  value       = { for k, v in aws_elasticsearch_domain_saml_options.elasticsearch_domain_saml_options : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "elasticsearch_domain_saml_options_region" {
  description = "Map of region values across all elasticsearch_domain_saml_options, keyed the same as var.elasticsearch_domain_saml_options"
  value       = { for k, v in aws_elasticsearch_domain_saml_options.elasticsearch_domain_saml_options : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elasticsearch_domain_saml_options_saml_options" {
  description = "Map of saml_options values across all elasticsearch_domain_saml_options, keyed the same as var.elasticsearch_domain_saml_options"
  value       = { for k, v in aws_elasticsearch_domain_saml_options.elasticsearch_domain_saml_options : k => one(v.saml_options) if v.saml_options != null && length(v.saml_options) > 0 }
  sensitive   = true
}

