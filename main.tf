resource "cloudflare_workers_script_subdomain" "workers_script_subdomains" {
  for_each = var.workers_script_subdomains

  account_id       = each.value.account_id
  enabled          = each.value.enabled
  script_name      = each.value.script_name
  previews_enabled = each.value.previews_enabled
}

