module "az_network-interface" {
  source                      = "github.com/SebastienArthaud/az_network-interface.git"
  resourcegroup_name          = var.resourcegroup_name
  ip_name                     = var.ip_name
  network_interface_subnet_id = var.subnet_id
  public_ip_address           = var.public_ip_address
  network_interface_primary   = var.network_interface_primary
  network_interface_name      = var.network_interface_name
  location                    = var.location
}
