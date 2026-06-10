output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.this.name
}

output "container_public_ip" {
  description = "Public IP of the container instance"
  value       = azurerm_container_group.this.ip_address
}

output "container_fqdn" {
  description = "Full domain name of the container instance"
  value       = azurerm_container_group.this.fqdn
}

output "app_url" {
  description = "URL to open your running web app"
  value       = "http://${azurerm_container_group.this.fqdn}"
}