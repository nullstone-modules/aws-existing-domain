data "ns_domain" "this" {
  stack_id = data.ns_workspace.this.stack_id
  block_id = data.ns_workspace.this.block_id
}

locals {
  domain_name = data.ns_domain.this.dns_name
}

data "aws_route53_zone" "this" {
  name = local.domain_name
}
