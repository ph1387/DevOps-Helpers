# ----- Networking -----------------------------------------

output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "public_fqdn" {
  value = azurerm_public_ip.public_ip.fqdn
}

# ----- AKS Resources --------------------------------------

output "resource_group_resources" {
  value = azurerm_resource_group.resource_group.name
}

output "resource_group_nodes" {
  value = local.node_resource_group_name
}

output "aks_resource_name" {
  value = azurerm_kubernetes_cluster.cluster.name
}

output "name" {
  value = local.combined_name
}

# ----- Service Principal ----------------------------------

output "admin_app_id" {
  value = module.sp_admin.app_application_id
}

output "admin_app_secret" {
  value = module.sp_admin.app_password
}

# ----- Storage --------------------------------------------

output "storage_name" {
  value = module.storage.storage_account_name
}

output "storage_key" {
  value = module.storage.storage_account_key
}