output "name" {
  value       = local.domain_name
  description = "string ||| The name of the created domain."
}

output "fqdn" {
  value       = local.domain_name
  description = "string ||| The FQDN (fully-qualified domain name) for the created domain."
}

output "zone_id" {
  value       = data.aws_route53_zone.this.zone_id
  description = "string ||| "
}

output "nameservers" {
  value       = data.aws_route53_zone.this.name_servers
  description = "list(string) ||| A list of authoritative nameservers for the created domain."
}

output "delegator" {
  value = {
    name       = aws_iam_user.delegator.name
    access_key = aws_iam_access_key.delegator.id
    secret_key = aws_iam_access_key.delegator.secret
  }

  description = "object({ name: string, access_key: string, secret_key: string }) ||| "

  sensitive = true
}
