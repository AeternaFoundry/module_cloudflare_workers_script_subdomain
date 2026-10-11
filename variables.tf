variable "workers_script_subdomains" {
  description = <<EOT
Map of workers_script_subdomains, attributes below
Required:
    - account_id
    - enabled
    - script_name
Optional:
    - previews_enabled
EOT

  type = map(object({
    account_id       = string
    enabled          = bool
    script_name      = string
    previews_enabled = optional(bool)
  }))
}

