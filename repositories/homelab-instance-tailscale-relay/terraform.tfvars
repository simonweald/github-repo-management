repo_owner = "a7d-corp"

repo_name        = "homelab-instance-tailscale-relay"
repo_description = "Config for managing the tailscale-relay instance."
repo_visibility  = "public"

topics = ["proxmox", "terraform", "virtualisation", "virtualization"]

from_template       = true
template_repo_owner = "a7d-corp"
template_repo_name  = "homelab-instance-template"

has_issues = true

allow_merge_commit     = false
allow_rebase_merge     = false
delete_branch_on_merge = true
