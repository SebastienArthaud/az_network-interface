variable "resourcegroup_name" {
  description = "Resource group de la vm créée"
  type        = string
}

variable "ip_name" {
  description = "Nom de NIC créée"
  type        = string
}

variable "subnet_id" {
  description = "id du subnet associé"
  type        = string
}

variable "public_ip_address" {
  type        = bool
  description = "Booléen permettant de définir sur la NIC créée a une IP publique ou nom"
}

variable "network_interface_primary" {
  description = "Primary NIC or not"
  default     = true
}

variable "network_interface_name" {
  type        = string
  description = "NIC Name"
}

variable "location" {
  type        = string
  description = "Resource group name"
}