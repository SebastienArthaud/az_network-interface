variable "resourcegroup_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Région AZURE hébergeant les ressources créées"
}

variable "ip_name" {
  type        = string
  description = "Nom de l'adresse IP publique créée (si créée)"
}

variable "network_interface_name" {
  type        = string
  description = "Nom de la carte réseau créée"
}

variable "network_interface_ip_config" {
  type        = string
  description = "Nom de la configuration IP dans azure"
  default     = "ipconfig1"
}

variable "network_interface_subnet_id" {
  type        = string
  description = "Name of the NIC Subnet"
}

variable "private_ip_address_allocation" {
  type        = string
  description = "Type d'allocation IP (dynamique ou statique)"
  default     = "Dynamic"
}

variable "public_ip_address" {
  type        = bool
  description = "Booléen permettant de définir si il y a une adresse IP publique ou non"
}

variable "network_interface_primary" {
  type        = bool
  description = "Primary NIC or not"
}