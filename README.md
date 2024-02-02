# az_network-interface

## Example usage 

Pour voir un exemple d'utilisation de ce module ce réferer au dossier "example".
Cloner le repot et effectuer un terraform init/plan/apply afin de voir un exemple de déploiement.

> ne pas oublier de faire un terraform destroy après avoir fait des tests


## Providers

| Name | Version |
|------|---------|
| [azurerm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs) | >= 3.11, < 4.0 |


## Modules

| Name |
|------|
| [public_ip_address](https://github.com/SebastienArthaud/az_public-ip-address.git) |


## Resources provisionés

| Name | Type |
|------|------|
| [azurerm_network_interface](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resourcegroup_name | Resource group name | `string` | null | yes |
| location | Région AZURE hébergeant les ressources créées | `string` | null | yes |
| ip_name | Nom de l'adresse IP publiquez créée (si créée) | `string` | null | no |
| network_interface_name | Nom de la carte réseau créée | `string` | null |  yes|
| network_interface_ip_config | Nom de la configuration IP dans azure | `string` | "ipconfig" | no |
| network_interface_subnet_id | ID Azure du subnet dans lequelle se trouvera la carte réseau | `string` | null | yes |
| private_ip_address_allocation | Type d'allocation IP (dynamique ou statique) | `string` | "Dynamic" | no |
| public_ip_address | Booléen permettant de définir si il y a une adresse IP publique ou non | `bool` | null | yes |
| network_interface_primary | carte réseau primaire ou non | `bool` | null | yes |


## Outputs

| Name | Description |
|------|-------------|
| network_interface_id | ID de la carte réseau créée |
| network_interface_mac | valeur de Adresse IP créée |
| network_interface_private_ip | Adresse IP privée de la carte réseau créée |
