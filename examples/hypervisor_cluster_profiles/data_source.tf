provider "oneview" {
  ov_username   = var.username
  ov_password   = var.password
  ov_endpoint   = var.endpoint
  ov_sslverify  = var.ssl_enabled
  ov_apiversion = 3600
  ov_ifmatch    = "*"
}

# Testing data source
data "oneview_hypervisor_cluster_profile" "hcp" {
  name = "Cluster-renamed"
}

output "oneview_hypervisor_cluster_profile_value" {
  value = data.oneview_hypervisor_cluster_profile.hcp.type
}

