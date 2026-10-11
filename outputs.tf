output "workers_script_subdomains_id" {
  description = "Map of id values across all workers_script_subdomains, keyed the same as var.workers_script_subdomains except keys with no id are omitted"
  value       = { for k, v in cloudflare_workers_script_subdomain.workers_script_subdomains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workers_script_subdomains_account_id" {
  description = "Map of account_id values across all workers_script_subdomains, keyed the same as var.workers_script_subdomains except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_workers_script_subdomain.workers_script_subdomains : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "workers_script_subdomains_enabled" {
  description = "Map of enabled values across all workers_script_subdomains, keyed the same as var.workers_script_subdomains except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_workers_script_subdomain.workers_script_subdomains : k => v.enabled if v.enabled != null }
}
output "workers_script_subdomains_previews_enabled" {
  description = "Map of previews_enabled values across all workers_script_subdomains, keyed the same as var.workers_script_subdomains except keys with no previews_enabled are omitted"
  value       = { for k, v in cloudflare_workers_script_subdomain.workers_script_subdomains : k => v.previews_enabled if v.previews_enabled != null }
}
output "workers_script_subdomains_script_name" {
  description = "Map of script_name values across all workers_script_subdomains, keyed the same as var.workers_script_subdomains except keys with no script_name are omitted"
  value       = { for k, v in cloudflare_workers_script_subdomain.workers_script_subdomains : k => v.script_name if v.script_name != null && length(v.script_name) > 0 }
}

