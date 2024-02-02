module "public_ip_address" {
  count              = var.public_ip_address == true ? 1 : 0
  source             = "github.com/SebastienArthaud/az_public-ip-address.git"
  resourcegroup_name = var.resourcegroup_name
  ip_name            = var.ip_name == null ? "${var.network_interface_name}_public" : var.ip_name

}

resource "azurerm_network_interface" "vm_network_interface" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resourcegroup_name

  ip_configuration {
    name                          = var.network_interface_ip_config
    subnet_id                     = var.network_interface_subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id          = var.public_ip_address == true ? module.public_ip_address[0].created_public_ip_id : null
    primary                       = var.network_interface_primary
  }
}
