output "network_interface_id" {
  description = "ID de la carte réseau créée"
  value       = resource.azurerm_network_interface.vm_network_interface.id
}

output "network_interface_mac" {
  description = "valeur de Adresse IP créée"
  value       = resource.azurerm_network_interface.vm_network_interface.mac_address
}

output "network_interface_private_ip" {
  description = "Adresse IP privée de la carte réseau créée"
  value       = resource.azurerm_network_interface.vm_network_interface.private_ip_address
}